cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.0"
  sha256 arm:          "f2a394c2da6f72eef16b844280b4173712429c9a763fe90a7e5f606df98ac27f",
         intel:        "a00430b0a15447a6964df3304a4b5b1968abcc68b6decec97849ddedde368f7d",
         arm64_linux:  "ff946f8cedc361fec99904d856098f0abeeb92dfc60e45f3e8f4443be1fb21ce",
         x86_64_linux: "6c03ef4daac68991b5e46df1e244ac5e594aaf98afaee5c187485d353b066126"

  on_macos do
    depends_on macos: :monterey

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
