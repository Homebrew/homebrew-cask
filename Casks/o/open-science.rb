cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.0.4"
  sha256 arm:          "363dd32951e71de8d8204e39129e75368425d096cb2d6f46d33b1608e70dcda6",
         intel:        "b5abe7c4399b0a0daac6b3edfc1751f572624c8588f0feba8d17567ac65290bb",
         x86_64_linux: "81106b6421fb60b2fdc55153bf4306d7720304f57c075e9db7a8528c7f5f5a59"

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
