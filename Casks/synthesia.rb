cask "synthesia" do
  version "10.8"
  sha256 "0211192748bac7dfab553386fdba1b8e1f0322638729bd04858add6fdbe13750"

  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg",
      verified: "synthesia.s3.amazonaws.com/"
  name "Synthesia"
  desc "Learn how to play the piano using falling notes"
  homepage "https://www.synthesiagame.com/"

  livecheck do
    url "https://www.synthesiagame.com/download"
    strategy :page_match
    regex(/synthesia\s(\d+(?:\.\d+)*)\sfor\smacOS/i)
  end

  app "Synthesia.app"

  zap trash: [
    "~/Library/Application Support/Synthesia",
    "~/Library/Autosave Information/com.synthesiallc.synthesia.plist",
    "~/Library/Saved Application State/com.synthesiallc.synthesia.savedState",
  ]
end
