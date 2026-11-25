cask "splice" do
  arch arm: "aarch64", intel: "amd64"

  version "5.4.15"
  sha256 arm:   "5db0176f7d0c10167c88143c023081e3e337ef06e5204edeb6f6b65190549e03",
         intel: "0748f28de51b1f930d1506c20fd949eeeb683f2d749fcc2649326f85df78f327"

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
    "~/Library/HTTPStorages/com.splice.Splice",
    "~/Library/Preferences/com.splice*",
  ]
end
