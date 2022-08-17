cask "playcover-community" do
  version "1.1.0"
  sha256 "cfb752567d068f2f068046e08bdd09b447731bf03a842306b3e241b2f312ef22"

  url "https://github.com/PlayCover/PlayCover/releases/download/#{version}/PlayCover_#{version}.dmg"
  name "PlayCover"
  desc "Sideload iOS apps and games"
  homepage "https://github.com/PlayCover/PlayCover"

  auto_updates true
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
