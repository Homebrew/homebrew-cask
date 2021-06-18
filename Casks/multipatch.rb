cask "multipatch" do
  version "1.8"
  sha256 "e3e9588e731e7fb18baa19d495d2d401d92f97f342a249c37f96841c75522a82"

  url "https://projects.sappharad.com/tools/multipatch#{version.no_dots}.zip"
  name "MultiPatch"
  desc "File patching utility"
  homepage "https://projects.sappharad.com/tools/multipatch.html"

  livecheck do
    url "https://github.com/Sappharad/MultiPatch"
    strategy :git
  end

  app "MultiPatch/MultiPatch.app"

  zap trash: [
    "~/Library/Preferences/com.sappharad.MultiPatch.plist",
    "~/Library/Saved Application State/com.sappharad.MultiPatch.savedState",
  ]
end
