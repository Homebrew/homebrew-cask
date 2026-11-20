cask "losslesscut" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.70.2"
  sha256 arm:          "3c0e2b3ec25fec66cf0cef343450d9a333e4bba5d64456c34cd18e891a3f5947",
         intel:        "5504f5b1ed485d694929f64db9c41516cfe866f5dc5f8bb2afaad7d9a99d975c",
         x86_64_linux: "e9ea00c9cf6cdda10db9d9cd13fc9ca10d61cdc046a60f5ee340db6643164a4a"

  on_macos do
    depends_on macos: :monterey

    app "LosslessCut.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/no.mifi.losslesscut-mac.sfl*",
      "~/Library/Application Support/LosslessCut",
      "~/Library/Logs/LosslessCut",
      "~/Library/Preferences/no.mifi.losslesscut-mac.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "LosslessCut-linux-x86_64.AppImage", target: "LosslessCut.AppImage"

    zap trash: "~/.config/LosslessCut"
  end

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-#{os}-#{arch}.#{url_end}"
  name "LosslessCut"
  desc "Trims video and audio files losslessly"
  homepage "https://losslesscut.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
