cask "pyfa" do
  version "2.28.2"
  sha256 "18d846984887cf5b75b51cec207df889ef98b617973f724cc5e54c152e3831c9"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  desc "Python fitting assistant, cross-platform fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
