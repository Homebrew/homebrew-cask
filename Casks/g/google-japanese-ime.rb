cask "google-japanese-ime" do
  version "2.28.5050"
  sha256 :no_check

  url "https://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      verified: "dl.google.com/japanese-ime/"
  name "Google Japanese Input Method Editor"
  desc "Japanese input software"
  homepage "https://www.google.co.jp/ime/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.google.inputmethod.Japanese"].short_version
    end
  end

  pkg "GoogleJapaneseInput.pkg"

  # Some launchctl and pkgutil items are shared with other Google apps, they should only be removed in the zap stanza
  # See: https://github.com/Homebrew/homebrew-cask/pull/92704#issuecomment-727163169
  # launchctl: com.google.keystone.daemon, com.google.keystone.system.agent, com.google.keystone.system.xpcservice
  # pkgutil: com.google.pkg.Keystone
  uninstall launchctl: [
              "com.google.inputmethod.Japanese.Converter",
              "com.google.inputmethod.Japanese.Renderer",
            ],
            pkgutil:   "com.google.pkg.GoogleJapaneseInput"

  zap launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.daemon",
        "com.google.keystone.xpcservice",
      ],
      pkgutil:   "com.google.pkg.Keystone",
      trash:     [
        "~/Library/Application Support/Google/JapaneseInput",
        "~/Library/Logs/GoogleJapaneseInput",
        "~/Library/Saved Application State/com.google.inputmethod.Japanese.Tool.ConfigDialog.savedState",
      ]
end
