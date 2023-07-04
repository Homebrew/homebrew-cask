cask "submariner" do
  version "2.3"
  sha256 "223fd73d7827017b8f28a8c97e569bd3a9cff7864bd66132818eda4917a7f700"

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
