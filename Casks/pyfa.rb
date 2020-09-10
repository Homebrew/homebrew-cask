cask "pyfa" do
  version "2.28.1"
  sha256 "be72c53335c8dc5d0b942a0a92bfee65d595035e6ade46add836718962448c2b"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
