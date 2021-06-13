cask "recut" do
  version "2.0,546"
  sha256 "7946bc6f89bfc0c5fdce9392bf2f02269d7a2b07a478a68822d2f25e5c0c1f7c"

  url "https://updates.getrecut.com/Recut-#{version.before_comma}.dmg"
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
