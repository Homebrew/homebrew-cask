cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.0.3"
  sha256 arm:          "b640cb98a6a52efcfb2f197f57cb405a753dc3821ae2366f9714713a74db6804",
         intel:        "c5225f38f6d75f91c09cb5c57fcbf6e29e4699597b3a034a1638a856c0b8f6be",
         x86_64_linux: "27cabf6c817643bd8cf6299cdb1067f5738bf6c8317c65a4b23c80df8e3eaaa3"

  on_macos do
    depends_on macos: :monterey

    app "Open-Science.app"

    uninstall quit: "com.aipoch.open-science"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aipoch.open-science.sfl*",
          "~/Library/Application Support/Open Science",
          "~/Library/Application Support/Open-Science",
          "~/Library/Caches/com.aipoch.open-science",
          "~/Library/Logs/Open Science",
          "~/Library/Preferences/com.aipoch.open-science.plist",
          "~/Library/Saved Application State/com.aipoch.open-science.savedState",
        ],
        rmdir: "~/.open-science*"
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
