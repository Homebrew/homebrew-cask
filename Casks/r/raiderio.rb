cask "raiderio" do
  version "5.0.11"
  sha256 "fb43f23292da830d654917eb64769c916632eb11430ac4001c99cfb7612bbfee"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg"
  name "Raider.io Client"
  desc "World of Warcraft client to track Mythic+ and Raid Progression"
  homepage "https://raider.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "RaiderIO.app"

  zap trash: [
    "~/Library/Application Support/RaiderIO",
    "~/Library/Logs/RaiderIO",
  ]
end
