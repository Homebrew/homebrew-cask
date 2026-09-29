cask "openhuman" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.64.7"
  sha256 arm:          "372dc9c036b6d58b41e9bdc384a4771e0dda95c10f7c8bad9e4b46af34f9f97d",
         intel:        "ad832e99c93cc13a682214f317b7d245743630390866350f6369cb3d03d334af",
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
