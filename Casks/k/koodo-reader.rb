cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.5"
  sha256 arm:          "a57972137620e94ec86ea732b5a7b1b1fe5c32d1630526649acc0d1c0c55c97d",
         intel:        "91c88d6e4f5c8faa4afdb38f3ff3e67b435ad7ffabca7b1a55e5f1dfc685fc86",
         arm64_linux:  "de8ae99f0388aac7e8b08b4bc7cdf833897fdd020ae387724a69f3925538b217",
         x86_64_linux: "dbdfd34509023f6ee00694cb2afdde0e6e3bba5071491340208a7c770a48d53f"

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
