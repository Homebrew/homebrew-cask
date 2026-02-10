cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.6"
  sha256 arm:   "d3cbb30f869d752374e309767246553049935e5d60e9fa629128433518d3fe17",
         intel: "5c2b487e5e0a15d1f74fcbcd345288ff29ae8a22514ce584a99fb5c317acb04b"

  url "https://desktop.splice.com/conveyor/stable/splice-#{version}-mac-#{arch}.zip"
  name "Splice"
  desc "Browse and preview sounds from Splice’s entire catalog"
  homepage "https://splice.com/"

  livecheck do
    url "https://desktop.splice.com/conveyor/stable/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Splice.app"

  uninstall quit: "com.splice.Splice"

  zap trash: [
    "~/Library/Application Support/*Splice*",
    "~/Library/Caches/com.splice*",
    "~/Library/Preferences/com.splice*",
  ]
end
