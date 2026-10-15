cask "beeper" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "-arm64"),
                                   linux: on_arch_conditional(arm: "-arm64", intel: "-x86_64")
  url_end = on_system_conditional macos: "-mac.zip", linux: ".AppImage"

  version "4.3.209"
  sha256 arm:          "6c35e131dce1b5b703d661055e1c9c206e0f5fc7a9d6cd675bb9a86845145c8c",
         intel:        "e1abf1b6099b03bdf9162eeebd59e3207b3db6cc44b6d7c4416144968227f98d",
         arm64_linux:  "da34714872bc704e2cf14ef6a68f6020cae19bb22224be553e9daf89d28b61ed",
         x86_64_linux: "41da0982e557387b3cc6d48bd3012a3eff73285b9beba6dee4335a154e8a30c7"

  on_macos do
    depends_on macos: :ventura

    app "Beeper Desktop.app"

    zap trash: [
      "~/Library/Application Support/BeeperTexts",
      "~/Library/Caches/com.automattic.beeper.desktop",
      "~/Library/Caches/com.automattic.beeper.desktop.ShipIt",
      "~/Library/Preferences/com.automattic.beeper.desktop.plist",
      "~/Library/Saved Application State/com.automattic.beeper.desktop.savedState",
    ]
  end
  on_linux do
    app_image "Beeper-#{version}#{url_arch}.AppImage", target: "Beeper.AppImage"

    zap trash: [
      "~/.cache/beepertexts-updater",
      "~/.config/BeeperTexts",
    ]
  end

  url "https://beeper-desktop.download.beeper.com/builds/Beeper-#{version}#{url_arch}#{url_end}"
  name "Beeper"
  desc "Universal chat app powered by Matrix"
  homepage "https://www.beeper.com/"

  livecheck do
    url "https://api.beeper.com/desktop/update-feed.json?bundleID=com.automattic.beeper.desktop&platform=#{os}&arch=#{livecheck_arch}&channel=stable"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
end
