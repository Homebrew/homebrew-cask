cask "iptvnator" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.25.0"
  sha256 arm:          "0afe23b22758b22db9f097932b4f3bc1c353dc6719bd5cb4a14cfface8602270",
         intel:        "9b3a196b47932cc11f3f5b7f811c2e3ba185d71be36bc2555c0346ac3f18d6f0",
         arm64_linux:  "39742faf735468ed6ab3af2c4f333a011ca3b4a3fcd375d4d1541c389da1bc60",
         x86_64_linux: "3c13509484899412a2464c7c5cc099d27a797e0b1e9d4f20832be0c164d7c86c"

  on_macos do
    depends_on macos: :monterey

    app "IPTVnator.app"

    zap trash: [
      "~/Library/Application Support/iptvnator",
      "~/Library/Preferences/com.electron.iptvnator.plist",
      "~/Library/Saved Application State/com.electron.iptvnator.savedState",
    ]
  end
  on_linux do
    app_image "iptvnator-#{version}-linux-#{arch}.AppImage", target: "IPTVnator.AppImage"

    zap trash: "~/.config/iptvnator"
  end

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/iptvnator-#{version}-#{os}-#{arch}.#{url_end}"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
