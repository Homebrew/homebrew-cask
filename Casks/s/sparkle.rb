cask "sparkle" do
  version "2.7.1"
  sha256 "f7385c3e8c70c37e5928939e6246ac9070757b4b37a5cb558afa1b0d5ef189de"

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.xz",
      verified: "github.com/sparkle-project/Sparkle/"
  name "Sparkle"
  desc "Software update framework for Cocoa developers"
  homepage "https://sparkle-project.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Sparkle Test App.app"
  binary "sparkle.app/Contents/MacOS/sparkle"

  zap trash: [
    "~/Library/Application Scripts/org.sparkle-project.Downloader",
    "~/Library/Application Scripts/org.sparkle-project.SparkleTestApp",
    "~/Library/Containers/org.sparkle-project.Downloader",
    "~/Library/Containers/org.sparkle-project.SparkleTestApp",
    "~/Library/Preferences/org.sparkle-project.SparkleTestApp.plist",
  ]
end
