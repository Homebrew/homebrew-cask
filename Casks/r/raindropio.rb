cask "raindropio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "5.7.9"
  sha256 arm:          "be2f654e5e978de6925a8636ea11540d783caef3379eb820965b55d06b13c44d",
         intel:        "43d4a82eabcb597c1b98aa733efe590924d0654087538d4a6f036615b18aa5c6",
         arm64_linux:  "9d614f61e142fb313561b14dbe485ecc0d56dbf0029c6b21ec6cd960dbf52566",
         x86_64_linux: "c1024c14c42391e3213addaa138d5c3ca8e33203cd769a90dd818ab4d5a0bd29"

  on_macos do
    depends_on macos: :monterey

    app "Raindrop.io.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.raindrop.macapp.sfl*",
      "~/Library/Application Support/Raindrop.io",
      "~/Library/Caches/com.apple.Safari/Extensions/Raindrop.io.safariextension",
      "~/Library/Cookies/io.raindrop.mac.binarycookies",
      "~/Library/Preferences/io.raindrop.mac.helper.plist",
      "~/Library/Preferences/io.raindrop.mac.plist",
      "~/Library/Preferences/io.raindrop.macapp.plist",
      "~/Library/Safari/Extensions/Raindrop.io.safariextz",
      "~/Library/Saved Application State/io.raindrop.mac.savedState",
    ]
  end
  on_linux do
    app_image "Raindrop-#{arch}.AppImage", target: "Raindrop.io.AppImage"

    zap trash: "~/.config/Raindrop.io"
  end

  url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-#{arch}.#{os}"
  name "Raindrop.io"
  desc "All-in-one bookmark manager"
  homepage "https://raindrop.io/"

  # First-party download page links to dmg file from GitHub "latest" release.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
