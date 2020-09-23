cask "pyfa" do
  version "2.28.3"
  sha256 "2d48f5511d4549fed4634e02c2a69566200c6a3c5d7830df7a381895d77313a7"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  desc "Python fitting assistant, cross-platform fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
