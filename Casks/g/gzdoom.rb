cask "gzdoom" do
  version "4.11.3"
  sha256 "4edfa387b74a116d8335d9c6c5f1f84d9e1cad342b07c0d7707dcc87cf0c6ed1"

  url "https://github.com/ZDoom/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.zip"
  name "GZDoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://github.com/ZDoom/gzdoom"

  livecheck do
    url :url
    regex(/^g?(\d+(?:\.\d+)+)$/i)
  end

  app "GZDoom.app"
end
