cask "pyfa" do
  version "2.31.0"
  sha256 "3ed66cf4ff431c2de783e431aafce2f32c769543daaaf1c498ef0aa52dfb6844"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  desc "Python fitting assistant, cross-platform fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
