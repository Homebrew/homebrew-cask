cask "openhuman" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.64.10"
  sha256 arm:          "ec06a4d5958c3b41d5260b44b60f0f82a0349aaa31f402f5c8105fd615dfe68c",
         intel:        "5d1e7f24da2292e7b84b6ab5b363005f50f5414ae19c190a5700d2341c23b733",
         arm64_linux:  "ce4e93ed2aa973afb2039df4ce045a10df6cfaa3a00be9cf79c1f8e9db66088c",
         x86_64_linux: "8bf2a7484cabf06b5b4608ce3d56b34a3470f1834f52895482a048d096d89b42"

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

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey
end
