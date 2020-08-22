cask "pyfa" do
  version "2.26.0"
  sha256 "1c891cb2f743b0e20fc383bc4cd142c987f58364e9589072f7b467dd43322856"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
