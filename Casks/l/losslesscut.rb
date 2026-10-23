cask "losslesscut" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.70.1"
  sha256 arm:          "82964e13ca65beeee508fbdb27fe823121701748b8b4023800bdcf701183d2ea",
         intel:        "1605f8e93e54d0359f154fe12b273b770e07e91da8c211097aa4cf7ae103f338",
         x86_64_linux: "04c87c97ff3980b8ebb6a62f0394204232e73a7dff89ea86ef49be3c372b0842"

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
