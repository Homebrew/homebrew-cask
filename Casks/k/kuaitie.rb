cask "kuaitie" do
  version "3.6.1,1700025369"
  sha256 "552dde2173ebd5e20f44c7c1f1c8ef2912063fe99278e4b2da54a83b924ecec8"

  url "https://clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/packages/kuaitie-#{version.csv.first.no_dots}_#{version.csv.second}.zip",
      verified: "clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/packages/"
  name "kuaitie"
  desc "Cross-platform cloud clipboard synchronization tool"
  homepage "https://home.clipber.com/"

  livecheck do
    url "https://clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "kuaitie.app"

  uninstall quit: "manager.clipboard.kuaitie"

  zap trash: [
    "~/Library/Caches/manager.clipboard.kuaitie",
    "~/Library/HTTPStorages/manager.clipboard.kuaitie",
    "~/Library/Preferences/manager.clipboard.kuaitie.plist",
    "~/Library/WebKit/manager.clipboard.kuaitie",
  ]
end
