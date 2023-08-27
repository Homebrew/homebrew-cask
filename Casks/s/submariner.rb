cask "submariner" do
  version "2.4.2"
  sha256 "4f306b69115f33f46d41fbf1623a8f8a01e1101e26456a15470e40caa472991a"

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
