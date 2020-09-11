cask "pyfa" do
  version "2.27.0"
  sha256 "4911e6f36b75a29447d27658020b56690b3d67e08b2bc0c27e98805697ae0b38"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  desc "Python fitting assistant, cross-platform fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
