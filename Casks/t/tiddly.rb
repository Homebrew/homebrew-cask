cask "tiddly" do
  arch arm: "applesilicon", intel: "64"

  version "0.0.22"
  sha256 arm:   "0b533f216c09216fec911d8a4608ff45d6e82b2ad19bb43cd845b23307a2d2a8",
         intel: "bb94a2c5eaed576adf72ff84f95fb6a7760fe108b9cbbd3013f48144a02f9df5"

  url "https://github.com/Jermolene/TiddlyDesktop/releases/download/v#{version}/tiddlydesktop-mac#{arch}-v#{version}.zip"
  name "TiddlyWiki"
  desc "Browser for TiddlyWiki"
  homepage "https://github.com/Jermolene/TiddlyDesktop"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "TiddlyDesktop-mac#{arch}-v#{version}/TiddlyDesktop.app"

  zap trash: [
    "~/Library/Application Support/TiddlyDesktop",
    "~/Library/Caches/TiddlyDesktop",
    "~/Library/Preferences/com.tiddlywiki.plist",
    "~/Library/Saved Application State/com.tiddlywiki.savedState",
  ]
end
