cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.4"
  sha256 arm:          "aac1ea960d9d2cebc5d154d6ace8520a11b7f4ce000253b4019516b89773250c",
         intel:        "ca9c73e626506fe41d2e348ac13ce39a2c74957b52689523dd13f9c4cfc587f9",
         arm64_linux:  "cbfe4e7e9e2aed9928ca0ae0103ffe1b8272f547143673ecfaf6d624ac136b96",
         x86_64_linux: "44deaa8e019d3ffab166a12ebfe5feaf33d728b9a40b9070758500499302dc28"

  on_macos do
    depends_on macos: :ventura

    app "Cherry Studio.app"
    binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

    zap trash: [
      "~/Library/Application Support/CherryStudio",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.kangfenmao.cherrystudio.sfl*",
      "~/Library/Caches/cherrystudio-updater",
      "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
      "~/Library/Logs/CherryStudio",
      "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
      "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
    ]
  end
  on_linux do
    app_image "Cherry-Studio-#{version}-linux-#{arch}.AppImage", target: "Cherry Studio.AppImage"

    zap trash: [
      "~/.cache/cherrystudio-updater",
      "~/.cherrystudio",
      "~/.config/CherryStudio",
      "~/.local/share/applications/cherrystudio-url-handler.desktop",
    ]
  end

  url "https://github.com/CherryHQ/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{os}-#{arch}.#{url_end}"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://www.cherry-ai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
