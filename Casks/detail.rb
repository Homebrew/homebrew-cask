cask "detail" do
  version "3.4.1"
  sha256 "8481188321764822613326e5205b862b5ce2c0794a5274432c2f524712142def"

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
              "co.detail.HAL",
              "co.detail.mac",
            ],
            delete:  [
              "/Library/CoreMediaIO/Plug-Ins/DAL/Detail Camera.plugin",
              "/Library/Audio/Plug-Ins/HAL/Detail Audio.driver",
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
