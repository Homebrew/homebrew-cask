cask "bespoke" do
  version "1.0.0"
  sha256 "94e33d4d95114ac831f9de5d43bbdc78df237d1a8babb324aeb8f36942ff1f76"

  url "https://github.com/BespokeSynth/BespokeSynth/releases/download/v#{version}/Bespoke-Mac.dmg",
      verified: "github.com/BespokeSynth/BespokeSynth/"
  name "bespoke"
  desc "Software modular synth"
  homepage "http://bespokesynth.com/"

  # BespokeSynth folder contains auxiliary files, so we need to move everything
  artifact "BespokeSynth", target: "#{appdir}/BespokeSynth"
end
