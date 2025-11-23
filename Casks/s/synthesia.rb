cask "synthesia" do
  version "10.9"
  sha256 "de6ed94576b990cf39809ee19d6351080738228f97ef0e16caed4d1a98a4d96a"

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
