cask "cate" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.1.1"
  sha256 arm:          "9c3f51e7ed776fadad002d34bd10acc65c130ba97ca171372988425c71c1d798",
         intel:        "6d3218cf542adfa137f42cfb1bb189bfded317fb25ece1c01cdc0abc5da608a2",
         x86_64_linux: "cbe4416be6d9260568deec3cf1fd7dc352701cb32e209ab2dfc1068cc756c807"

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
