cask "gzdoom" do
  version "4.5.0"
  sha256 "b7a8056e63fa0a14497e8d1767bbbae2da1ebe9f47e4f87df613106f9ebe3522"

  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg",
      verified: "github.com/coelckers/gzdoom/"
  name "gzdoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://zdoom.org/index"

  livecheck do
    url :url
    strategy :git
    regex(/^g(\d+(?:\.\d+)*)$/)
  end

  app "GZDoom.app"
end
