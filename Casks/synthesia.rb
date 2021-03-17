cask "synthesia" do
  version "10.7"
  sha256 "18dde0fa5ca7b10aab1964621509ae3cf4110a02b11c24470b3d6e0f1c3fee65"

  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg",
      verified: "synthesia.s3.amazonaws.com/"
  appcast "https://www.synthesiagame.com/download"
  name "Synthesia"
  homepage "https://www.synthesiagame.com/"

  app "Synthesia.app"

  zap trash: [
    "~/Library/Application Support/Synthesia",
    "~/Library/Autosave Information/com.synthesiallc.synthesia.plist",
    "~/Library/Saved Application State/com.synthesiallc.synthesia.savedState",
  ]
end
