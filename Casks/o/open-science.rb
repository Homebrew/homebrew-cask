cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.0.5"
  sha256 arm:          "07171c0014e6c6a3f0fb578467cd50b0b237a5f9cc03808c3563bfa7166fb548",
         intel:        "97aae4054c264d9ea4794a47056b44b73d3c20ec208174fb6eacf3d69f6b38df",
         x86_64_linux: "765b1fb039c996b4592e45d144abe351ed211b4639b673cd2d1a133fe24a67e8"

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
