cask "sparkle" do
  version "2.2.0"
  sha256 "e6c4453058430fd33469b1c093e82094266b1d9874e43a974c52e2ca86671dae"

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
