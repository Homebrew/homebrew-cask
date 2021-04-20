cask "raiderio" do
  version "2.1.2"
  sha256 "fd7b77d4b3bf588dba3f6e6e214c7ab58287a76c5105762048b76ac9cb32f54f"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "RaiderIO Client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
