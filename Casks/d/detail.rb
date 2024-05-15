cask "detail" do
  version "3.4.4"
  sha256 "6f0a69466477d5824886087e11f5a542f7f04d4fbab71392820c45f2cf6c59f0"

  url "https://detail-builds.s3.amazonaws.com/mac/#{version}/Detail.pkg",
      verified: "detail-builds.s3.amazonaws.com/mac/"
  name "Detail"
  desc "Pro camera for video calls"
  homepage "https://detail.co/"

  deprecate! date: "2024-03-28", because: :moved_to_mas

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Detail.pkg"

  uninstall pkgutil: [
              "co.detail.DAL",
              "co.detail.HAL",
              "co.detail.mac",
            ],
            delete:  [
              "/Library/Audio/Plug-Ins/HAL/Detail Audio.driver",
              "/Library/CoreMediaIO/Plug-Ins/DAL/Detail Camera.plugin",
            ]

  zap trash: [
        "~/Library/Application Support/co.detail.mac",
        "~/Library/Application Support/Detail",
        "~/Library/Caches/co.detail.mac",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/co.detail.mac",
        "~/Library/co.detail.library",
        "~/Library/HTTPStorages/co.detail.mac",
        "~/Library/Preferences/co.detail.mac.plist",
        "~/Library/Saved Application State/co.detail.mac.savedState",
        "~/Library/WebKit/co.detail.mac",
      ],
      rmdir: "~/Documents/Detail"
end
