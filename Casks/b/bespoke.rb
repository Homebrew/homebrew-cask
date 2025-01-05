cask "bespoke" do
  version "1.3.0"
  sha256 "f31f37593fb4e1981701775be8bc1b700608d1ce3ddbdc4da336615d5eff79b6"

  url "https://github.com/BespokeSynth/BespokeSynth/releases/download/v#{version}/BespokeSynth-Mac-#{version.dots_to_underscores}.dmg",
      verified: "github.com/BespokeSynth/BespokeSynth/"
  name "Bespoke Synth"
  desc "Software modular synth"
  homepage "https://www.bespokesynth.com/"

  depends_on macos: ">= :high_sierra"

  app "BespokeSynth.app"

  zap trash: [
    "~/Library/Caches/com.ryanchallinor.bespokesynth",
    "~/Library/Preferences/com.ryanchallinor.bespokesynth.plist",
    "~/Library/Saved Application State/com.ryanchallinor.bespokesynth.savedState",
  ]
end
