cask "onlyoffice" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm"

  version "7.0.0"

  if Hardware::CPU.intel?
    sha256 "93703ef85b073e2eaedadfa3d721dae96b2564562953181c7b11ead3917ff95c"
  else
    sha256 "996879beb0a3aee19a0bbd4d105a0a798164f479a01a4043d7e346e87331bf0b"
  end

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
