cask "gzdoom" do
  version "4.4.2"
  sha256 "1de3ed755232e36cf85fccee8fb1f5236f1427713b1086d88f8162c68f2cabc4"

  # github.com/coelckers/gzdoom/ was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast "https://github.com/coelckers/gzdoom/releases.atom"
  name "gzdoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://zdoom.org/index"

  app "GZDoom.app"
end
