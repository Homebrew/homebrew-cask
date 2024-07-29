cask "simplesynth" do
  version "1.1"
  sha256 "5d70295d5a72075a26b158f5a92b1488170e8ff569f0a52c4e5e5bcfe7ffcdb2"

  url "https://notahat.s3.amazonaws.com/SimpleSynth-#{version}.zip",
      verified: "notahat.s3.amazonaws.com/"
  name "SimpleSynth"
  desc "Small and fast synth"
  homepage "https://github.com/notahat/simplesynth"

  disable! date: "2024-07-17", because: "is 32-bit only"

  app "SimpleSynth.app"
end
