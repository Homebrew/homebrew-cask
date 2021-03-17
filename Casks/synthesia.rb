cask "synthesia" do
  version "10.6"
  sha256 "53b3f9f0cbf4ff73738e859bd933aa6c15b245af6ff5e841843cde574e591bc0"

  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg",
      verified: "synthesia.s3.amazonaws.com/"
  appcast "https://feeds.feedburner.com/SynthesiaNews"
  name "Synthesia"
  homepage "https://www.synthesiagame.com/"

  app "Synthesia.app"

  zap trash: [
    "~/Library/Application Support/Synthesia",
    "~/Library/Autosave Information/com.synthesiallc.synthesia.plist",
    "~/Library/Saved Application State/com.synthesiallc.synthesia.savedState",
  ]
end
