cask "bespoke" do
  version "1.2.0"
  sha256 "ce6c25b1af287e67ebe0a8701a2127491bfb65258be7f46e83acbbbb246e0511"

  url "https://github.com/BespokeSynth/BespokeSynth/releases/download/v#{version}/BespokeSynth-Mac-#{version.dots_to_underscores}.dmg",
      verified: "github.com/BespokeSynth/BespokeSynth/"
  name "Bespoke Synth"
  desc "Software modular synth"
  homepage "https://www.bespokesynth.com/"

  app "BespokeSynth.app"

  zap trash: [
    "~/Library/Caches/com.ryanchallinor.bespokesynth",
    "~/Library/Preferences/com.ryanchallinor.bespokesynth.plist",
    "~/Library/Saved Application State/com.ryanchallinor.bespokesynth.savedState",
  ]
end
