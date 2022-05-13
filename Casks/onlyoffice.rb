cask "onlyoffice" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm"

  version "7.1.0"

  if Hardware::CPU.intel?
    sha256 "97ec1035147d9587f20f87fa1b92b14947cad2dc304f3a7f71c12cb3d8535237"
  else
    sha256 "1aebbfe203b51ca3c400b1e9232df4290210f2f22d35a361b91792eb18c8a5a2"
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
