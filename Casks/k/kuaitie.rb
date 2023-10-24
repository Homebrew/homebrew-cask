cask "kuaitie" do
  version "3.5.1,1697788001"
  sha256 "87da8a0cb8abdd8316d1fe80b0482418dd3be214cec81783d4d7e68e63d3559f"

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
