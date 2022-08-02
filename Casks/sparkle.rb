cask "sparkle" do
  version "2.2.1"
  sha256 "43e65fb560caf76ff9bccb40fe5ffadab06e80223b60acfa61d27ecf7c556f7f"

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
