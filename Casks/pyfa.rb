cask "pyfa" do
  version "2.24.1"
  sha256 "c74a42d8c814fe5954336645848a477ddd31257bbad8b239bc10f1a8ab745f3f"

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast "https://github.com/pyfa-org/Pyfa/releases.atom"
  name "pyfa"
  homepage "https://github.com/pyfa-org/Pyfa"

  app "pyfa.app"
end
