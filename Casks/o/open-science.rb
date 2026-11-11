cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.2.1"
  sha256 arm:          "16ce6eda533b716373ddff0758a053067da7a47ad05e354a4672a293c5049212",
         intel:        "f988760dbe40b46c1071f891680d24cd17192285cfb03f5bfb472352e28198ab",
         x86_64_linux: "25a9cf59713d22431b3662682461fd07673971b84d0505071302f361504a5b1e"

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

    zap trash: [
          "~/.cache/open-science-updater",
          "~/.config/Open Science",
          "~/.config/Open-Science",
        ],
        rmdir: "~/.open-science*"
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
