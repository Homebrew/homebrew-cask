cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.3"
  sha256 arm:          "62c61150ccd8605c415c1ee45be92fa82a0c46ed794b5b9640717a2178b68fbc",
         intel:        "16e1bf4ce501955d93d269cd50fb154ed559ad488b982e80badbaa0359bdfbb1",
         x86_64_linux: "e31288a9be7cb9a9b64c6e2ce593723ccb8fe9f099b28f9093b624917ba72a39"

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
