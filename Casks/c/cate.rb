cask "cate" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.0.2"
  sha256 arm:          "683fac19eb02cdecd5351ce126f09d1795750f4f17eb586931424bb0f5b1b327",
         intel:        "4c5879b232fc991b43e3d1f7bd58c8046c3cffb1db861df7d31d82b475577809",
         x86_64_linux: "6b13242256291a9702d725e71f5ee63540652b96c35561950eec6f0f57451996"

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
