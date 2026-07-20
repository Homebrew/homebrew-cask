cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "2.4.1"
  sha256 arm:          "9b2d9549b7d52327788cf7e60360ef768a604397fdd4d7b730588788b0c57016",
         intel:        "f08a1f957f7149e590eb48451cad0ff294a850b712c1a30495a4d2ed9f4adf5d",
         arm64_linux:  "a0ce8de67235787ef33760ede3f3c2c17b1d675c043c0b50c60c3ca4d0d2f985",
         x86_64_linux: "2f05b60ebcb098b866c856027672414735594132de88eae1985a58691071f78b"

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
