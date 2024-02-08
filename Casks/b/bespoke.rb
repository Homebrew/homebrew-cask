cask "bespoke" do
  version "1.2.1"
  sha256 "85ca71302c002a14bc92958044797dbf0d8b9baa52a753243012347070f4e4bb"

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
