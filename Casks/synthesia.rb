cask "synthesia" do
  version "10.9"
  sha256 "9f7b7fcb6b95cc64a80f3dd93c60e30d42532ca7e2c49c0b6c9e0614f456fcff"

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
