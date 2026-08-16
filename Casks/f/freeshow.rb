cask "freeshow" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "1.6.4"
  sha256 arm:          "27ffec3b799395a252ad9125d55ecf7333e82e54840b0ebc80117b3a41e93cd5",
         intel:        "328ed0bb105f7ea98c0a09c12c7ddc859bf7eca8ef46f17a90bd40d89e9a7aaf",
         arm64_linux:  "359d709995d117c62d70355026e045cd05af8e941134b63f04dcf992618faac8",
         x86_64_linux: "0ba706ddcf48e72327a569805cf5955d6fe841d15381b9f4d2e7707192bdf90d"

  on_macos do
    depends_on macos: :big_sur

    app "FreeShow.app"

    uninstall quit: "app.freeshow"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freeshow.sfl*",
          "~/Library/Application Support/freeshow",
          "~/Library/Preferences/app.freeshow.plist",
          "~/Library/Saved Application State/app.freeshow.savedState",
        ],
        rmdir: "~/Documents/FreeShow"
  end
  on_linux do
    app_image "FreeShow-#{version}-#{arch}.AppImage", target: "FreeShow.AppImage"
  end

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.#{url_end}",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "freeshow@beta"
end
