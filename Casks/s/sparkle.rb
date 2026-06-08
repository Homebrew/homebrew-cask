cask "sparkle" do
  version "2.9.3"
  sha256 "74a07da821f92b79310009954c0e15f350173374a3abe39095b4fc5096916be6"

  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.xz",
      verified: "github.com/sparkle-project/Sparkle/"
  name "Sparkle"
  desc "Software update framework for Cocoa developers"
  homepage "https://sparkle-project.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Sparkle Test App.app"

  zap trash: [
    "~/Library/Application Scripts/org.sparkle-project.Downloader",
    "~/Library/Application Scripts/org.sparkle-project.SparkleTestApp",
    "~/Library/Containers/org.sparkle-project.Downloader",
    "~/Library/Containers/org.sparkle-project.SparkleTestApp",
    "~/Library/Preferences/org.sparkle-project.SparkleTestApp.plist",
  ]
end
