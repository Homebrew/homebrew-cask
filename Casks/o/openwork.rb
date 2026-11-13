cask "openwork" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.67"
  sha256 arm:          "618507dbecd686eb5eb1c9a1fb378c8b9520d2eace2bcd057eae53eb2e5234c6",
         intel:        "42b573ed11737e0da9d34877c1fcd98651487a1b909891de3f17ae600e7eff8e",
         arm64_linux:  "33575176268c481a37ff91656d11e51191dc2840c6b00ca0cd1134be99fe8cfb",
         x86_64_linux: "4980b3adfbb9cb45ec47956108ad2ed5f5e2b2b5efd05d31434e74172e5670cd"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "OpenWork.app"

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/@openwork",
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

    zap trash: [
      "~/.config/@openwork",
      "~/.config/com.differentai.openwork",
      "~/.config/openwork",
    ]
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
