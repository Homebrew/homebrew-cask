cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.37.2"
  sha256 arm:          "0e2368044a134cc746699c9ced133a9d612fcbbbe7c903dde53f24f3c2946ce3",
         intel:        "8febd9148859437981bd84da0527a555970116d05006f822ab66af0f11ccb2d3",
         x86_64_linux: "09cb8a56013deca1eb2d258714d87b7abc94abc8b3dd1afd619528b899c78bf1"

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
