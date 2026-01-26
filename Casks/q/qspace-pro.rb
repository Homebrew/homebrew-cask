cask "qspace-pro" do
  version "6.0.6"
  sha256 "76097a1307e32d0e2cfb76c0853d5295f09313e1c593b2de762878ad5388981f"

  url "https://cdn.awehunt.com/qs/rel/QSpace%20Pro_V#{version}.dmg"
  name "QSpace Pro"
  desc "Better Finder alternative"
  homepage "https://qspace.awehunt.com/"

  livecheck do
    url "https://qspace.awehunt.com/en-us/index.html"
    regex(%r{href=.*?/QSpace%20Pro[._-]V?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "QSpace Pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.jinghaoshe.qspace.pro.StashShelfShareExtension",
    "~/Library/Application Support/com.jinghaoshe.qspace.pro",
    "~/Library/Caches/com.jinghaoshe.qspace.pro",
    "~/Library/Containers/com.jinghaoshe.qspace.pro.StashShelfShareExtension",
    "~/Library/HTTPStorages/com.jinghaoshe.qspace.pro",
    "~/Library/HTTPStorages/com.jinghaoshe.qspace.pro.binarycookies",
    "~/Library/Preferences/com.jinghaoshe.qspace.pro.plist",
    "~/Library/Saved Application State/com.jinghaoshe.qspace.pro.savedState",
    "~/Library/WebKit/com.jinghaoshe.qspace.pro",
    "~/QSpace",
  ]
end
