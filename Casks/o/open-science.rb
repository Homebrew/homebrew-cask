cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.34.1"
  sha256 arm:          "45ad1637d03d46eb033adbccd0a80cff61304426a5291d36d7dddfa3479d0939",
         intel:        "f549b433abecdf1561c09da4c4777a90fb8a8d4ddb077eeb97907c2b407d8370",
         x86_64_linux: "5de6677e625c7b22cb344835cdec8b2602e4542601334c3804d6cfe7eae7572f"

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
