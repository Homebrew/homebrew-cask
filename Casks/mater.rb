cask "mater" do
  version "1.0.4"
  sha256 "b101a22ede300556f6cddfacefb15926307e711a3f4fdc121627fea02662385b"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-darwin-x64.zip"
  appcast "https://github.com/jasonlong/mater/releases.atom"
  name "Mater"
  homepage "https://github.com/jasonlong/mater"

  app "Mater-darwin-x64/Mater.app"
end
