cask "cherry-studio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.9"
  sha256 arm:          "ed67bc97b4a35c9af7ddeec870553e15653081385b65c50a6e0a98243602e6b7",
         intel:        "52d96701d993bd16ec8a49d336dab746c7308e32c8636a426c0b153f2ef4dfd8",
         arm64_linux:  "bbbb2dfc7e30250bd2adfdd10f922b7713fcb1a71479283a6846a3dd22d1928d",
         x86_64_linux: "bd01d6324e59e26164e6f7a9f7840dda689cd1c998272ebac44f976022ec0613"

  on_macos do
    depends_on macos: :monterey

    app "Cherry Studio.app"
    binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

    zap trash: [
      "~/Library/Application Support/CherryStudio",
      "~/Library/Caches/cherrystudio-updater",
      "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
      "~/Library/Logs/CherryStudio",
      "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
      "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
    ]
  end
  on_linux do
    app_image "Cherry-Studio-#{version}-#{arch}.AppImage", target: "Cherry Studio.AppImage"
  end

  url "https://github.com/CherryHQ/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{arch}.#{url_end}",
      verified: "github.com/CherryHQ/cherry-studio/"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://www.cherry-ai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
