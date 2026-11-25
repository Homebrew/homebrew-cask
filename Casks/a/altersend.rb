cask "altersend" do
  os macos: "dmg", linux: "AppImage"

  version "2.1.0"
  sha256 arm:          "2e00d552a3de834e3a5c7a1a929a6ca41423f164608ef0085ecc8b433c542c77",
         intel:        "c49b14859642b00155ef3d01fa7b5ef447d286ec93bd0735cdad4840a933dc45",
         arm64_linux:  "61fa2de7c00d7305de9253531648e878b850f4edfdbb8da15d3a63ca3f19e70c",
         x86_64_linux: "697863b20b41c270519a59bb09947b5ce6ae0a0b9d583681206cc9a755956d8a"

  on_macos do
    arch arm: "-arm64"

    url "https://github.com/denislupookov/altersend/releases/download/v#{version}/AlterSend-#{version}#{arch}.#{os}"

    depends_on macos: :monterey

    app "AlterSend.app"

    zap trash: [
      "~/Library/Application Scripts/com.altersend.desktop.ShareExtension",
      "~/Library/Application Support/AlterSend",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.altersend.desktop.sfl*",
      "~/Library/Containers/com.altersend.desktop.ShareExtension",
      "~/Library/Preferences/com.altersend.desktop.plist",
    ]
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"

    url "https://github.com/denislupookov/altersend/releases/download/v#{version}/AlterSend-#{arch}.#{os}"

    app_image "AlterSend-#{arch}.AppImage", target: "AlterSend.AppImage"

    zap trash: "~/.config/AlterSend"
  end

  name "AlterSend"
  desc "Secure, peer-to-peer file transfer app"
  homepage "https://altersend.com/"
end
