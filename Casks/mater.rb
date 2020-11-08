cask "mater" do
  version "1.0.5"
  sha256 "9533ed5acff759d939a9920f30db05ca7857b94a2efc650c79bcb28e6ba7d1cc"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-darwin-x64.zip"
  appcast "https://github.com/jasonlong/mater/releases.atom"
  name "Mater"
  homepage "https://github.com/jasonlong/mater"

  app "Mater-darwin-x64/Mater.app"
end
