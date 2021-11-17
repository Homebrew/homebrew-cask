cask "bespoke" do
  version "1.0.0"
  sha256 "94e33d4d95114ac831f9de5d43bbdc78df237d1a8babb324aeb8f36942ff1f76"

  url "https://github.com/BespokeSynth/BespokeSynth/releases/download/v#{version}/Bespoke-Mac.dmg",
      verified: "github.com/BespokeSynth/BespokeSynth/"
  name "Bespoke Synth"
  desc "Software modular synth"
  homepage "https://www.bespokesynth.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  suite "BespokeSynth"

  zap trash: [
    "~/Library/Caches/com.ryanchallinor.bespokesynth",
    "~/Library/Preferences/com.ryanchallinor.bespokesynth.plist",
    "~/Library/Saved Application State/com.ryanchallinor.bespokesynth.savedState",
  ]
end
