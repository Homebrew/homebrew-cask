cask "gzdoom" do
  version "4.7.0"
  sha256 "809cd7506005e2cf98da37d0aab2a97d2bd166cc61f003ee2af7785f540bf604"

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
