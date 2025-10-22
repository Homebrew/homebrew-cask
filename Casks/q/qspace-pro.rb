cask "qspace-pro" do
  version "6.0.4"
  sha256 "826e6ab4f41ea7f49cdd27fd8a0f824c94f566a7be5db6d295e06aab51cf89d2"

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
