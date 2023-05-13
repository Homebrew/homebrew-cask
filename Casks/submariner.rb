cask "submariner" do
  version "2.2"
  sha256 "213b23c538f45dda3c6f851b8ccd692fd7ad833eac383ad5ad4ab0ba5dab2367"

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
