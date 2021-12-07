cask "sparkle" do
  version "1.27.1"
  sha256 "20d729f8ca4d07911da31fe0296880cd3176b71738deaf2b7f8de2d96cf63f4e"

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
end
