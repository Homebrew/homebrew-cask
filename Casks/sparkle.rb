cask "sparkle" do
  version "2.2.2"
  sha256 "babbe8f1582479c5c14792b893ba78a5751c5964cb2326588ae7125708bda09c"

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.xz",
      verified: "github.com/sparkle-project/Sparkle/"
  name "Sparkle"
  desc "Software update framework for Cocoa developers"
  homepage "https://sparkle-project.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sparkle Test App.app"
  binary "sparkle.app/Contents/MacOS/sparkle"
end
