cask "beeper" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_arch = on_system_conditional macos: on_arch_conditional(arm: "-arm64"),
                                   linux: on_arch_conditional(arm: "-arm64", intel: "-x86_64")
  url_end = on_system_conditional macos: "-mac.zip", linux: ".AppImage"

  version "4.3.334"
  sha256 arm:          "0f192f4b86dd3805dc4964057ceaf6c2e4c8df5beb26011e561c775b4349cac9",
         intel:        "652b18133bab91eb34c972fec907c6bf1af8f1dfa2c0d8aaf55f6b0aca76042c",
         arm64_linux:  "1d35229042f47c774bab7de13d3c4a1e29b711fc2de90b0d218ce7a4333fdd67",
         x86_64_linux: "84d411ed28c7776416734a162446b9921e95c396029ce104341fe1a782751874"

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
