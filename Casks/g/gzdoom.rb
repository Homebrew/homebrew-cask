cask "gzdoom" do
  version "4.11.0"
  sha256 "62981787fea16f0a620af6bc93556a8931c03fe06f78fdccd9001357b3461f10"

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
