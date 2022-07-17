cask "onlyoffice" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm"

  version "7.1.1"

  if Hardware::CPU.intel?
    sha256 "f0384110b6ebafb046c6df0d730edc5c6687564c760f84bb9e812a7f836c3abc"
  else
    sha256 "0d17c802acdb2bc7aa9af7bec05fdae1db6691a9df72e948ce010077c993b4b0"
  end

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  livecheck do
    url "https://github.com/ONLYOFFICE/DesktopEditors/releases/"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/ONLYOFFICE-#{arch}\.dmg}i)
  end

  auto_updates true

  app "ONLYOFFICE.app"
end
