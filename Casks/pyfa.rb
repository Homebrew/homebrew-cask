cask "pyfa" do
  version "2.29.0"
  sha256 "511c829a724aaec97a632ac1eb1ab4d6f48282c89dc7a84861450e12d484dac6"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  desc "Python fitting assistant, cross-platform fitting tool for EVE Online"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
