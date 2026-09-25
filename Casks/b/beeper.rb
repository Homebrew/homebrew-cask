cask "beeper" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "-arm64"),
                                   linux: on_arch_conditional(arm: "-arm64", intel: "-x86_64")
  url_end = on_system_conditional macos: "-mac.zip", linux: ".AppImage"

  version "4.3.152"
  sha256 arm:          "36a007735706eaa9af982fe703530b920a0b3ff9120115e5d7cfb8dec1389f6c",
         intel:        "10179655a64816709f7dd09465ffa0a58d2dd7f8404e68fb2911d28a25ed8c32",
         arm64_linux:  "c752c7447f3177cfdda3c474a18acfd4a3cd39d3b7d67dd30c54783060799359",
         x86_64_linux: "81e16d64a5ae425d31eacdc6e420a8ec0923d81f258480f844e8a4098b9c77ec"

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
