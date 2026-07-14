cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "2.4.0"
  sha256 arm:          "790a23d974c500e8442a24bd8abb27fe1689495fbcf426b0135fdc6f2f766bc3",
         intel:        "c12c288a3f1a147798d849cafb2cd10488fe37437899005b2c6d34656e96e7c5",
         arm64_linux:  "3421e2ad769e48419ca0e6fc3982c0a8d8ff26d8c283cca5c407706e64f220ca",
         x86_64_linux: "5bc9142e688f18c67465326b0b2c1f2e83e86c3919320a7642bccd4a12875d70"

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
      "~/Library/Application Support/koodo-reader",
      "~/Library/Preferences/xyz.960960.koodo.plist",
      "~/Library/Saved Application State/xyz.960960.koodo.savedState",
    ]
  end

  on_linux do
    app_image "Koodo-Reader-#{version}-#{arch}.AppImage", target: "Koodo Reader.AppImage"
  end
end
