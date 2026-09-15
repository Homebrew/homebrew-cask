cask "cate" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.0.1"
  sha256 arm:          "64977f249dea24f0a8c4bb109a8b2d35923f9375670593116b82812fc736634c",
         intel:        "40dc21ea2b310d6406c2c23ed643e8758167fffae153878b4c5f5c616a0c0c72",
         x86_64_linux: "41ba09dd618302e1bf8d3f78166087c46b04abc845e9792a223647b275bab1b5"

  on_macos do
    depends_on macos: :monterey

    app "Cate.app"

    zap trash: [
      "~/.cate",
      "~/Library/Application Support/Cate",
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
  end

  url "https://github.com/0-AI-UG/cate/releases/download/v#{version}/Cate-#{version}#{url_end}"
  name "Cate"
  desc "Infinite zoomable canvas with editor, terminal, and browser panels"
  homepage "https://cate.cero-ai.com/"

  auto_updates true
end
