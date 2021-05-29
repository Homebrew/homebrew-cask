cask "gzdoom" do
  version "4.6.0"
  sha256 "2e6789b95129e7984d1629301121dc55cb3c94f2575219553c2675504dfc501b"

  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.zip",
      verified: "github.com/coelckers/gzdoom/"
  name "GZDoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://zdoom.org/index"

  livecheck do
    url :url
    regex(/^g?(\d+(?:\.\d+)+)$/)
  end

  app "GZDoom.app"
end
