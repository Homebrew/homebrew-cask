cask "getrasplex" do
  version "1.0.1"
  sha256 "78ffbeb70754495e1dd686e3c351e89d2cf76d64e13b9339e03063c9e942b2ad"

  url "https://github.com/RasPlex/rasplex-installer/releases/download/#{version}/GetRasplex-#{version}.dmg",
      verified: "github.com/RasPlex/rasplex-installer/"
  appcast "https://github.com/RasPlex/rasplex-installer/releases.atom"
  name "Rasplex Installer"
  desc "Plex Client for the Raspberry Pi computer"
  homepage "https://www.rasplex.com/"

  app "GetRasplex.app"
end
