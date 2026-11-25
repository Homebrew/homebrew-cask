cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.7"
  sha256 arm:          "e515c8f6314b81003b80e076c10f912f3f25b39a130323ae7402ba96b60dc7dc",
         intel:        "999ba1b90a7e3cdae49f14a133be0c5242c2b30efb568284e6cfa589345bcb24",
         arm64_linux:  "20ba40f55c05a2b6ed745070a8b25ed71baf5a5f4d84a8608cfda3144d4ba104",
         x86_64_linux: "4affd61b4497eb9676a84d875063a614076897b866295f6964ffc15a7fee78e2"

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
