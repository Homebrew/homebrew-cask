cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.4"
  sha256 arm:          "0f88ad20cc8aa94673ea70748d48769b96885bb843d2e9c130d278304d35203a",
         intel:        "3df317c79a6c741494a0a2a2ecd0ba592fc60c0380c0d7a0356ee30aff0b02d4",
         arm64_linux:  "e94676d6e8eb55a61df533e3a1f0a796a30fc7891a51d29e75e1c13f3e88bd29",
         x86_64_linux: "0b6b6236953e2d974fca5d630615855a5587cf75341177e14c98bd07c02421cd"

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
