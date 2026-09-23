cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.33.0"
  sha256 arm:          "10b582c94630aa2595b47a40964f9a69aa37ac858eb571a93db2a5671b071c63",
         intel:        "4aded6de655b2ab868dd43d2b31fac80bf32e6eeeb274c298bc5dd3b62d3b886",
         x86_64_linux: "d028057001264daf21406b2744e03e5ce86299ba310d86ff0dafd342dc0d9cdf"

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
