cask "kuaitie" do
  version "3.6.5,1702637903"
  sha256 "5ae09135abc572c5a93d235effa639fc51ffcc20c71e0cf72c9a8fab6de77b77"

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
