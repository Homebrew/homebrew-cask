cask "synthesia" do
  version "10.8"
  sha256 "02fa6519b152d28cb6bd9d41be0a859ef66c35bdf563a0a2dab7e4dccd334d8e"

  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg",
      verified: "synthesia.s3.amazonaws.com/"
  name "Synthesia"
  desc "Learn how to play the piano using falling notes"
  homepage "https://www.synthesiagame.com/"

  livecheck do
    url "https://www.synthesiagame.com/download"
    regex(/synthesia\s(\d+(?:\.\d+)+)\sfor\smacOS/i)
  end

  app "Synthesia.app"

  zap trash: [
    "~/Library/Application Support/Synthesia",
    "~/Library/Autosave Information/com.synthesiallc.synthesia.plist",
    "~/Library/Saved Application State/com.synthesiallc.synthesia.savedState",
  ]
end
