cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.6"
  sha256 arm:          "a4ed495ba090c06fdfe832acdad1af12a3ffcd40725078855c9568092031acac",
         intel:        "092ff130d48b35141f1e8b542e0cfb18a0bbac3d107255a2830c41b35ef06403",
         arm64_linux:  "04215f600efe7f5c0ad3a94ae9e5772f59382ba6a0d6ef7595039b58316167b4",
         x86_64_linux: "c9efb1cb47533a0d7bdafc079363befbb544d187da4e0311cfd1b1e33e139229"

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
  end

  url "https://github.com/koodo-reader/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-#{arch}.#{os}"
  name "Koodo Reader"
  desc "Open-source e-book reader"
  homepage "https://www.koodoreader.com/en"
end
