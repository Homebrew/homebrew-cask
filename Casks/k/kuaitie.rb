cask "kuaitie" do
  version "6.0.0,1766990787"
  sha256 "50f27ebfceaa3f93afbe512b89a381c0829288db9ace3c5c4f8ee0bcc16c2bda"

  url "https://clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/packages/kuaitie-#{version.csv.first.no_dots}_#{version.csv.second}.zip",
      verified: "clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/packages/"
  name "kuaitie"
  desc "Cross-platform cloud clipboard synchronisation tool"
  homepage "https://home.clipber.com/"

  livecheck do
    url "https://clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/update.xml"
    strategy :sparkle
  end

  auto_updates true

  app "kuaitie.app"

  uninstall quit: "manager.clipboard.kuaitie"

  zap trash: [
    "~/Library/Caches/manager.clipboard.kuaitie",
    "~/Library/HTTPStorages/manager.clipboard.kuaitie",
    "~/Library/Preferences/manager.clipboard.kuaitie.plist",
    "~/Library/WebKit/manager.clipboard.kuaitie",
  ]
end
