cask "gzdoom" do
  version "4.7.1"
  sha256 "ef5a739e31b463d2776cd6605e68a2751bd7dc53c07eec43ca75308cb72ad801"

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
