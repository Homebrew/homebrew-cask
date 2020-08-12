cask "pyfa" do
  version "2.25.0"
  sha256 "e45c38a87293e4f86588a7fc3e13005ba597de0f06053a3af7122ffe332a0eb8"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
