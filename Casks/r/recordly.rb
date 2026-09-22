cask "recordly" do
  arch arm: "arm64", intel: "x64"
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.0"
  sha256 arm:          "520ee1d5570f2342e126306eda84b95e442c844b6f0e84c6e81c208445be8cc4",
         intel:        "f478afef1c37adb8d4df9e0c0cdecde99df6f3131e34629ad3f5c3c8c226d1b5",
         x86_64_linux: "37b16c416ee9970e0117a9839abe0b7e024f3f02db767f1a6122528b84704a41"

  on_macos do
    depends_on macos: :monterey

    app "Recordly.app"

    uninstall quit: "dev.recordly.app"

    zap trash: [
      "~/Library/Application Support/Recordly",
      "~/Library/Preferences/dev.recordly.app.plist",
      "~/Library/Saved Application State/dev.recordly.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Recordly-linux-x64.AppImage", target: "Recordly.AppImage"

    zap trash: "~/.config/Recordly"
  end

  url "https://github.com/webadderallorg/Recordly/releases/download/v#{version}/Recordly-#{os}#{arch}.#{url_end}"
  name "Recordly"
  desc "Creator-focused screen recorder with auto-zoom, cursor effects, and more"
  homepage "https://github.com/webadderallorg/Recordly"

  livecheck do
    url :url
    strategy :github_latest
  end
end
