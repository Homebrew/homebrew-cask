cask "gzdoom" do
  version "4.6.1"
  sha256 "9191cb8c8868cc8bfac81f627d0c0ca87c166c995f9ad7dcff7ff69399c1650a"

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
