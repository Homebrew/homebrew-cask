cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.34.0"
  sha256 arm:          "8393ba138aee4080ecf8d5928e144aa053a7703137f13618c7d4e0b4fecd54a8",
         intel:        "37aa799b008f35dbd98f77d1ea8dec6301e4f4a6a3b3bed96c88f189929d0810",
         x86_64_linux: "917d45769d211a8e4857e907030043a5de200fca90ac4324f2642ff72441cc4e"

  on_macos do
    depends_on macos: :monterey

    app "Open-Science.app"

    uninstall quit: "com.aipoch.open-science"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aipoch.open-science.sfl*",
      "~/Library/Application Support/Open Science",
      "~/Library/Caches/com.aipoch.open-science",
      "~/Library/Logs/Open Science",
      "~/Library/Preferences/com.aipoch.open-science.plist",
      "~/Library/Saved Application State/com.aipoch.open-science.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "aipoch-open-science-#{version}-linux-x86_64.AppImage", target: "Open-Science.AppImage"
  end

  url "https://github.com/aipoch/open-science/releases/download/v#{version}/aipoch-open-science-#{version}-#{os}-#{arch}.#{url_end}"
  name "Open Science"
  desc "AI research workbench with scientific agents and notebooks"
  homepage "https://aipoch.com/open-science"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
