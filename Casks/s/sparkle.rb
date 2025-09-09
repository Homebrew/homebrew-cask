cask "sparkle" do
  version "2.7.3"
  sha256 "4146b751cf53f54ad0bacb63b4d2fa412d8edc10bd0939dd25b5866f0c8c5094"

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
