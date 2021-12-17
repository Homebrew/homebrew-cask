cask "bespoke" do
  version "1.1.0"
  sha256 "a751c491290a91ecc455d7150ec36789aa34409bf2d99ef9ada8a3e79db3d6e8"

  url "https://github.com/BespokeSynth/BespokeSynth/releases/download/v#{version}/Bespoke-Mac.dmg",
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
