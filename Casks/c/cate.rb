cask "cate" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: ".AppImage"

  version "2.0.3"
  sha256 arm:          "98d9c06d2bada74851d0fff8e85c7f61314df62f73349f17a46fff1ea162f26d",
         intel:        "be2198eb35d3935e07c5a990795ef7f9f449287be79fc0dc97b0687d6de57c70",
         x86_64_linux: "5614eb5d7207125023e6c283262998402e3eda22a212e60bbcdfd386fa6510bf"

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
