cask "bruno" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.4.0"
  sha256 arm:          "b9e7a4d8a371578116c67c20ae2892e840324d58be5a0407b2623701dd40f2a3",
         intel:        "f76cbbb0a5710b6e621b94a518866b41a44379c13fd07dde27159bff11f13cf3",
         arm64_linux:  "24a162622c0351f7a00f22a05eaaa0f4e44af52df5f8c8e07d477fa1086337a0",
         x86_64_linux: "49f9b2e5c552a37522ccae240bf22bb9783213216e3b196297522808ebb191f9"

  on_macos do
    auto_updates true

    app "Bruno.app"

    zap trash: [
          "~/Library/Application Support/bruno",
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.usebruno.app.sfl*",
          "~/Library/Logs/bruno",
          "~/Library/Preferences/com.usebruno.app.plist",
          "~/Library/Saved Application State/com.usebruno.app.savedState",
        ],
        rmdir: "~/Documents/bruno"
  end
  on_linux do
    app_image "bruno_#{version}_#{arch}_linux.AppImage", target: "Bruno.AppImage"

    zap trash: "~/.config/bruno",
        rmdir: "~/Documents/bruno"
  end

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_#{os}.#{url_end}"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
