cask "onlyoffice" do
  arch = Hardware::CPU.intel? ? "x86-64" : "arm"

  version "6.4.2"

  if Hardware::CPU.intel?
    sha256 "ccd92a0a52805de903d7ff1fff6becc1c7814490f2d8feb63033d0930966e0b7"
  else
    sha256 "828734f2dd15a0ee5bc59eb235080ec2dd9b7c1e9add71f4318a04b61f1e7cdb"
  end

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
