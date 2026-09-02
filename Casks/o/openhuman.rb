cask "openhuman" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.63.12"
  sha256 arm:          "048c589582df5d63c053ac6e171fe0f3d59e653823f31ab8b74fc49957f720e2",
         intel:        "1d4cceab6477a8d80e40453f5fa1525a5d08c6d271f1fd2027ba9c19efe95a0d",
         arm64_linux:  "5c24d76482e8b25ba291500f4bafb57c875f0dca2ac2f779fa1941c7f0ada652",
         x86_64_linux: "aeda8aa7fa9b4a479a7fc8a94afff0dde99a408a1b04cbc4fea2f64139cc9e5b"

  on_macos do
    auto_updates true

    app "OpenHuman.app"

    uninstall quit: "com.openhuman.app"

    zap trash: [
      "~/.openhuman",
      "~/Library/Preferences/com.openhuman.app.plist",
    ]
  end
  on_linux do
    app_image "OpenHuman_#{version}_#{arch}.AppImage", target: "OpenHuman.AppImage"
  end

  url "https://github.com/tinyhumansai/openhuman/releases/download/v#{version}/OpenHuman_#{version}_#{arch}.#{url_end}"
  name "OpenHuman"
  desc "Personal AI assistant with local memory and integrations"
  homepage "https://tinyhumans.ai/openhuman"
end
