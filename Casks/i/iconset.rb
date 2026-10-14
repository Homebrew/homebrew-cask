cask "iconset" do
  arch arm: "arm64-"

  version "2.5.2"
  sha256 arm:   "136f3b13c11e532af68ec2dc789905aa40e6737d7af06985ff44fd3fbc29a54f",
         intel: "10c20b85b2b5b6c8cd0f841db39b76fc2b7e558ad545fd9bb27088459938b9c7"

  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-#{arch}mac.zip"
  name "Iconset"
  desc "Organise icon sets and packs in one place"
  homepage "https://iconset.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Iconset.app"

  zap trash: [
    "~/Library/Application Support/Iconset",
    "~/Library/Preferences/io.iconset.app.plist",
    "~/Library/Saved Application State/io.iconset.app.savedState",
  ]
end
