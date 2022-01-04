cask "sparkle" do
  version "2.0.0"
  sha256 "7ca516157e2f7c021313aa3e1427a18b5940b482fcb4f08120dabc90b85b0268"

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
