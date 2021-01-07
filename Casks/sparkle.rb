cask "sparkle" do
  version "1.22.0"
  sha256 "50bdc8ad64593d871e4deb5b7526444422c3ac1e1f461fcfdd9e6aef0d2e34cd"

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2",
      verified: "github.com/sparkle-project/Sparkle/"
  name "Sparkle"
  homepage "https://sparkle-project.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sparkle Test App.app"
end
