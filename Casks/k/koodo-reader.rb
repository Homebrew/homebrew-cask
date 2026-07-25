cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "2.4.2"
  sha256 arm:          "d33f8843f21b0de5c5272fd9edec1ec9934917a52e357de3a99f8556d2f75211",
         intel:        "7487f1b3eb37092abf130abe650f9ab104a4e2df3cc8d498fa7947830879c10d",
         arm64_linux:  "f2592590e868d9d3b39968a75e44172d9aee57fd4e68050ddf63a62bc5087a79",
         x86_64_linux: "c4e28cc4df5fafe500514d6cbd15100b061c8a842ad7eebb626935520ec69a4f"

  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  url "https://github.com/koodo-reader/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-#{arch}.#{url_end}",
      verified: "github.com/koodo-reader/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source e-book reader"
  homepage "https://www.koodoreader.com/en"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :big_sur

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
end
