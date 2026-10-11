cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.6"
  sha256 arm:          "e605ef6c3b9e65a24d6d5a16feb8c6bb98207a911edb9e0d7a77523e9d1b21cc",
         intel:        "3824d6b785010921614b119de3bb92e0fb70b2079f5ed81412c04848be272480",
         arm64_linux:  "6becb2ec5cc687932e23f4ca590bae5b5b0a97d7a4979e75f78aba026afb2812",
         x86_64_linux: "d23be4e10a0f2e57acd8ff3b892764bccf115ac837e29229a532d5c4423e11f1"

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
