cask "playcover-community@beta" do
  version "3.0.0-beta.2"
  sha256 "d20d5d50085f248143e9eaaab2c65156aae461e90bdb32e50a751b58e15b4555"

  url "https://github.com/PlayCover/PlayCover/releases/download/#{version}/PlayCover_#{version}.dmg"
  name "PlayCover"
  desc "Sideload iOS apps and games"
  homepage "https://github.com/PlayCover/PlayCover"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+[._-]beta(\.\d+)?)/i)
  end

  deprecate! date: "2025-05-01", because: :unsigned

  auto_updates true
  conflicts_with cask: "playcover-community"
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "PlayCover.app"

  zap trash: [
    "~/Library/Application Support/io.playcover.PlayCover",
    "~/Library/Caches/io.playcover.PlayCover",
    "~/Library/Containers/io.playcover.PlayCover",
    "~/Library/Frameworks/PlayTools.framework",
    "~/Library/Preferences/io.playcover.PlayCover.plist",
    "~/Library/Saved Application State/io.playcover.PlayCover.savedState",
  ]
end
