cask "simplesynth" do
  version "1.1"
  sha256 "5d70295d5a72075a26b158f5a92b1488170e8ff569f0a52c4e5e5bcfe7ffcdb2"

  # notahat.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://notahat.s3.amazonaws.com/SimpleSynth-#{version}.zip"
  appcast "https://notahat.com/simplesynth/"
  name "SimpleSynth"
  homepage "https://notahat.com/simplesynth/"

  app "SimpleSynth.app"
end
