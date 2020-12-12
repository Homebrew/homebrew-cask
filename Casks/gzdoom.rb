cask "gzdoom" do
  version "4.5.0"
  sha256 "b7a8056e63fa0a14497e8d1767bbbae2da1ebe9f47e4f87df613106f9ebe3522"

  # github.com/coelckers/gzdoom/ was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast "https://github.com/coelckers/gzdoom/releases.atom"
  name "gzdoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://zdoom.org/index"

  app "GZDoom.app"
end
