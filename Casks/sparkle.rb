cask "sparkle" do
  version "2.3.2"
  sha256 "2b3fe6918ca20a83729aad34f8f693a678b714a17d33b5f13ca2d25edfa7eed3"

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
