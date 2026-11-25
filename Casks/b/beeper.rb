cask "beeper" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "-arm64"),
                                   linux: on_arch_conditional(arm: "-arm64", intel: "-x86_64")
  url_end = on_system_conditional macos: "-mac.zip", linux: ".AppImage"

  version "4.3.340"
  sha256 arm:          "c4485b51af4508362c62605642c4199ea6d87c790fa701d0574435b9574101ba",
         intel:        "78e76b46995bd8897d1c282581e7267cfd2386697067a0aba9a09531fad689a4",
         arm64_linux:  "d7644ce078572140dfb88f65d87e8792a7e9b44600a38a60bc6a7d5f50d67254",
         x86_64_linux: "cb2d7e1a69f30d902bd3ca9c9f9020ead48e459bcc20ef8b0cbb0460b82b0dee"

  on_macos do
    depends_on macos: :ventura

    app "Beeper Desktop.app"

    zap trash: [
      "~/Library/Application Support/BeeperTexts",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.automattic.beeper.desktop.sfl*",
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
