cask "recut" do
  version "1.1.2"
  sha256 "1f6d33a99a74422db9cb8fdee09b6ba8b3690a3661fdf6f284733278765e87ac"

  url "https://updates.getrecut.com/Recut-#{version}.dmg"
  name "Recut"
  desc "Remove silence from videos and automatically generate a cut list"
  homepage "https://getrecut.com/"

  livecheck do
    url "https://updates.getrecut.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Recut.app"

  zap trash: [
    "~/Library/Caches/co.tinywins.recut",
    "~/Library/Preferences/co.tinywins.recut.plist",
    "~/Library/Saved Application State/co.tinywins.recut.savedState",
  ]
end
