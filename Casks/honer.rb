cask "honer" do
  version "1.1"
  sha256 "ca6b657bec7fd20e2cae8c7145852439148211b9d4aac9ab12c354c69426c043"

  url "https://github.com/puffnfresh/Honer.app/releases/download/#{version}/Honer.app.zip"
  appcast "https://github.com/puffnfresh/Honer.app/releases.atom"
  name "Honer"
  desc "Utility that draws a border around the focused window"
  homepage "https://github.com/puffnfresh/Honer.app"

  app "Honer.app"
end
