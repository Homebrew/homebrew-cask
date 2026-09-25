cask "iptvnator" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.24.0"
  sha256 arm:          "29b9ff05e5f4eda4a1e44bb66dd0d46d9b8cc726310475c09c9334ba1451faf1",
         intel:        "f1e0857f3d6b8c03b36a0ce6ccd0a4a138fb4d9eebdfcf6f2021debb325a9fb2",
         arm64_linux:  "e1bd87aa9333f877b6591ec9417aedf978e5d5dba73e3e67d0613ecb0bf8e6c4",
         x86_64_linux: "9478e316acf67004c0a41ab2afd90a95bb24e8270884a510817398136c94749e"

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
end
