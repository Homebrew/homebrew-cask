cask "pyfa" do
  version "2.32.0"
  sha256 "25f5810e41c66bc74bb5097cbb436e9487a7cd7dd77931db5a0cc27d783cde2b"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  desc "Python fitting assistant, cross-platform fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
