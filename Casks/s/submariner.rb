cask "submariner" do
  version "2.4"
  sha256 "6b90b32fba4165a84d5c2c23e455ef742f35da0050a1512dc5920c8fd45bb84d"

  url "https://github.com/NattyNarwhal/Submariner/releases/download/v#{version}/Submariner-#{version}.zip",
      verified: "github.com/NattyNarwhal/Submariner/"
  name "Submariner"
  desc "Subsonic client"
  homepage "http://submarinerapp.com/"

  depends_on macos: ">= :big_sur"

  app "Submariner.app"

  zap trash: [
    "~/Library/Application Scripts/fr.read-write.Submariner",
    "~/Library/Containers/fr.read-write.Submariner",
    "~/Music/Submariner",
  ]
end
