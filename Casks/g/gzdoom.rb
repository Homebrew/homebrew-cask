cask "gzdoom" do
  version "4.12.1"
  sha256 "9ddf13892f987cd0638732b14aaa93cd8ccf0d4597be8920dc3433fc4786d475"

  url "https://github.com/ZDoom/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.zip"
  name "GZDoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://github.com/ZDoom/gzdoom"

  livecheck do
    url :url
    regex(/^g?(\d+(?:\.\d+)+)$/i)
  end

  app "GZDoom.app"

  zap trash: "~/Library/Preferences/gzdoom.ini"
end
