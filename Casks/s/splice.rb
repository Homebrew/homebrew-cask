cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.9"
  sha256 arm:   "af31c203713575f02f700e0c4ff3b52d2da38dca5c43a7815c39217fb16a3afb",
         intel: "2112a3d72bc0cc3e217d6635dd806ce31b522e3941f235095f1932c17fcf6952"

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
