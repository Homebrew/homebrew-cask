cask "beeper" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "-arm64"),
                                   linux: on_arch_conditional(arm: "-arm64", intel: "-x86_64")
  url_end = on_system_conditional macos: "-mac.zip", linux: ".AppImage"

  version "4.3.264"
  sha256 arm:          "77e7c9b442011953fb211b0dc77a59fdf37daad8aad67ce010b2abcc54346343",
         intel:        "01433db344d282eb00ebdfaac61686f9593a1bcfeabdb5279a42901750fcf0dc",
         arm64_linux:  "ff5e22754b9c6af01b446f5e4e656ffeaf5fefeb37e46939a423065f897d3548",
         x86_64_linux: "399ee4cd2b5e20b0d7d95039448190a98b6998a75648540149c4e5dbcce30551"

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
