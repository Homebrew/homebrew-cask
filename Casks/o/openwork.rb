cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.56"
  sha256 arm:          "2cf35fc3aaa2a83857813dd9bbf836b0b336971432e44ae54c180ee1c2d5eacc",
         intel:        "729c4430bd20ab0a8c64817e1e76a9b9c35729d8674a6f7d91a9a9f3d990574b",
         arm64_linux:  "1a5d8e4e795db14082e13a37e260c31dcb6482fd45125658759a0eef0acc24a1",
         x86_64_linux: "9212d35125a539d8d08ef13050132c450ebccc9ff9449ae74368d7040fcf56b2"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.differentai.openwork.sfl*",
      "~/Library/Application Support/com.differentai.openwork",
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
      "~/Library/Preferences/com.differentai.openwork.ShipIt.plist",
    ]
  end
  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}.#{url_end}"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
