cask "openhuman" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.64.0"
  sha256 arm:          "d8eb06c1d5312ec6dcca2ce911e01e68dbac0423950a2f093663dd07eb402212",
         intel:        "d9a75ea4dd982e5f838b3371f1c7432f46e68648454c0abea00e25090ab4ce3f",
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
end
