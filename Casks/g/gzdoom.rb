cask "gzdoom" do
  version "4.11.0"
  sha256 "e6eedcdf250e3a2c37f9fffdea7151cbf42e7329c57059576bff98b86220053c"

  url "https://github.com/ZDoom/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}a-macOS.zip"
  name "GZDoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://github.com/ZDoom/gzdoom"

  livecheck do
    url :url
    regex(/^g?(\d+(?:\.\d+)+)$/i)
  end

  app "GZDoom.app"
end
