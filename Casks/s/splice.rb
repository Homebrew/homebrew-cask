cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.14"
  sha256 arm:   "3e6986f0d6b55a7e07763ee15efcd50adab22261199efb50aefbc811b15c4970",
         intel: "0f50a02c400523393d0a410c3f0f8f9b24116b8827fba79e77ddbf87ef5df2df"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
