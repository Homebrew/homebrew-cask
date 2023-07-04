cask "submariner" do
  version "2.3.1"
  sha256 "29889fcc4657df2e09b943b1d7dc788773b26231efedd4bb1f0b01b5d5391e67"

  url "https://github.com/NattyNarwhal/Submariner/releases/download/v#{version}/Submariner-#{version}.zip",
      verified: "github.com/NattyNarwhal/Submariner/"
  name "Submariner"
  desc "Subsonic client"
  homepage "https://submarinerapp.com/"

  app "Submariner.app"

  zap trash: [
    "~/Library/Application Scripts/fr.read-write.Submariner",
    "~/Library/Containers/fr.read-write.Submariner",
    "~/Music/Submariner",
  ]
end
