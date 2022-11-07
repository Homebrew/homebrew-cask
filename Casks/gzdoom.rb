cask "gzdoom" do
  version "4.9.0"
  sha256 "baa38f93467bb419f938c6ca4e1dcea858e546f874e5fbdc05155a7a0f942170"

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
