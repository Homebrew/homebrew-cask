cask "pyfa" do
  version "2.30.0"
  sha256 "9156f34ebb9d6dcca8adaf9a7a5e4a3a55ec7658c13c0175f3e6f0959ecf7f98"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  desc "Python fitting assistant, cross-platform fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
