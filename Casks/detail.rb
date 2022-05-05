cask "detail" do
  version "2.2.13"
  sha256 "c3e5b72bc7f80e7f4d95b38062f2557c27c7c913f12b398fae5e43cb9954fdc1"

  url "https://detail-builds.s3.amazonaws.com/mac/#{version}/Detail.pkg",
      verified: "detail-builds.s3.amazonaws.com/mac/"
  name "Detail"
  desc "Pro camera for video calls"
  homepage "https://detail.co/"

  livecheck do
    url "https://api.detail.co/v1/macOS/latest"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Detail.pkg"

  uninstall pkgutil: [
    "co.detail.DAL",
    "co.detail.mac",
  ],
            delete:  "/Library/CoreMediaIO/Plug-Ins/DAL/Detail Camera.plugin"

  zap trash: [
    "~/Library/Application Support/co.detail.mac",
    "~Library/Application Support/Detail",
    "~/Library/Caches/co.detail.mac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/co.detail.mac",
    "~/Library/co.detail.library",
    "~/Library/HTTPStorages/co.detail.mac",
    "~/Library/Preferences/co.detail.mac.plist",
    "~/Library/WebKit/co.detail.mac",
  ],
      rmdir: "~/Documents/Detail"
end
