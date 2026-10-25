cask "kando" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.0.1"
  sha256 arm:          "da33fde36a63766e1d646c5ebfaaf62865dcb764b835c0c38873d18c45d642c2",
         intel:        "b6fda2860691752e670b088000a5f5e9c6878ea6f6d486089ebbf42dddfba66c",
         arm64_linux:  "36a1369b84683384aa625e5e046ad85c703e39f14e553e931df68d907fbc6e0c",
         x86_64_linux: "bbd322eda95543e41f27d05dac838e7a46d4de190e501668ce37edda2185169a"

  on_macos do
    depends_on macos: :monterey

    app "Kando.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
      "~/Library/Application Support/Kando",
      "~/Library/Preferences/com.electron.kando.plist",
    ]
  end
  on_linux do
    app_image "Kando-#{version}-#{arch}.AppImage", target: "Kando.AppImage"

    zap trash: "~/.config/kando"
  end

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.#{url_end}"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
