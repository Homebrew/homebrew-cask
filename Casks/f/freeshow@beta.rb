cask "freeshow@beta" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "1.6.5-beta.3"
  sha256 arm:          "c3ad66b950583a66cc44d701718819e5cd2c9eb1eb57d6574e3503fb81cceebe",
         intel:        "b98271f9c011066451973c27812be5b7acf8202e58d587d43bcd60dcb150c33d",
         arm64_linux:  "e2af526030f8809d83f3933bb952e32fca2d90a6f68ad4a49ef1b1540a3c8311",
         x86_64_linux: "bba1b6ff1abfa42c3f9982839177728bcde453e2b667dbc83b3be0189f96fff7"

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
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
end
