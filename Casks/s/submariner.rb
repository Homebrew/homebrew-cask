cask "submariner" do
  version "3.0"
  sha256 "d769d3eb8f45bd0c8b305436c85094294f281866735d523ca1c42351241ad5eb"

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
