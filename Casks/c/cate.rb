cask "cate" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.1.2"
  sha256 arm:          "40ebb80bf015c57b4e0a82289af02a6fa3f3b709fe51bc4e377953d3a0808320",
         intel:        "f985bffdc27696e4454387e9704e465b70365511faa2d660de146b71798ecf0a",
         x86_64_linux: "33174bc88b2684aa4817bc21aa33e6419fdf6d8a7fda72d62449b4d50a1cc882"

  on_macos do
    depends_on macos: :monterey

    app "Cate.app"

    zap trash: [
      "~/.cate",
      "~/Library/Application Support/Cate",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cate.app.sfl*",
      "~/Library/Application Support/CrashReporter/Cate Helper_*.plist",
      "~/Library/Caches/cate-updater",
      "~/Library/Caches/com.cate.app",
      "~/Library/Caches/com.cate.app.ShipIt",
      "~/Library/HTTPStorages/com.cate.app",
      "~/Library/Logs/Cate",
      "~/Library/Preferences/ByHost/com.cate.app.ShipIt.*.plist",
      "~/Library/Preferences/com.cate.app.plist",
      "~/Library/Saved Application State/com.cate.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Cate-#{version}.AppImage", target: "Cate.AppImage"

    zap trash: [
      "~/.cache/cate-updater",
      "~/.cate",
      "~/.config/Cate",
    ]
  end

  url "https://github.com/0-AI-UG/cate/releases/download/v#{version}/Cate-#{version}#{url_end}"
  name "Cate"
  desc "Infinite zoomable canvas with editor, terminal, and browser panels"
  homepage "https://cate.cero-ai.com/"

  auto_updates true
end
