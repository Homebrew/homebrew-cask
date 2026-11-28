cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.9"
  sha256 arm:          "ea8b05dc16c9f720293c0a3cadcf47c62be979a1bf75422665e5c8b783e94403",
         intel:        "b9082a8ed8ac40a90548424fde4cff2d5619d247cb162babafec5f0be4b5f86c",
         arm64_linux:  "b2fd98b32b2901b7d1cd833a652607573506db16dcaf69ce28bd0fd9011ea611",
         x86_64_linux: "568c5ff86fadf04c06801e18c0e8bcb0a48cfe2530eb9334dceb73a0728bf309"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    app "Koodo Reader.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/xyz.960960.koodo.sfl*",
      "~/Library/Application Support/koodo-reader",
      "~/Library/Preferences/xyz.960960.koodo.plist",
      "~/Library/Saved Application State/xyz.960960.koodo.savedState",
    ]
  end
  on_linux do
    app_image "Koodo-Reader-#{version}-#{arch}.AppImage", target: "Koodo Reader.AppImage"

    zap trash: "~/.config/koodo-reader"
  end

  url "https://github.com/koodo-reader/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-#{arch}.#{os}"
  name "Koodo Reader"
  desc "Open-source e-book reader"
  homepage "https://www.koodoreader.com/en"
end
