cask "gzdoom" do
  version "4.8.0"
  sha256 "5eebf2f1080535d8adc7006754325e65db0031735b656fce8c67d7c9b2cef4c7"

  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.zip",
      verified: "github.com/coelckers/gzdoom/"
  name "GZDoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://zdoom.org/index"

  livecheck do
    url :url
    regex(/^g?(\d+(?:\.\d+)+)$/i)
  end

  app "GZDoom.app"
end
