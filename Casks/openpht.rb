cask "openpht" do
  version "1.8.0.148-573b6d73"
  sha256 "153cbba8d9bb7f61c646fc4221f4ab107a15809d7bf5da41204dac49fbba0553"

  url "https://github.com/RasPlex/OpenPHT/releases/download/v#{version}/OpenPHT-#{version}-macosx-x86_64.zip"
  name "OpenPHT"
  desc "Community-driven fork of Plex Home Theater"
  homepage "https://github.com/RasPlex/OpenPHT"

  app "OpenPHT.app"

  zap trash: [
    "~/Library/Application Support/OpenPHT",
    "~/Library/Logs/OpenPHT.log",
    "~/Library/Saved Application State/tv.openpht.openpht.savedState",
  ]
end
