cask "kopiaui" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "0.23.1"
  sha256 arm:          "f2adb1869c603c66aaeabd846affd21df426c614cc8285230f5465f9389a003c",
         intel:        "518c6ff1ed4c992085f1c2ce3eeec0d8616562d855c12b82d7da02eb2103b7a5",
         arm64_linux:  "8cc3ecb9d61cdad508efe9663a32bd6916138b6a9fe9c7ecf80af6e293d3da60",
         x86_64_linux: "188b69c0433d7d99695d40fade187181c3e9fb6d2b18a8cc7777009edf52ed31"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "KopiaUI.app"

    zap trash: [
      "~/Library/Application Support/kopia",
      "~/Library/Caches/kopia",
      "~/Library/Logs/kopia",
      "~/Library/Logs/kopia-ui",
      "~/Library/Preferences/io.kopia.ui.plist",
      "~/Library/Saved Application State/io.kopia.ui.savedState",
    ]
  end
  on_linux do
    app_image "KopiaUI-#{version}#{arch}.AppImage", target: "KopiaUI.AppImage"

    zap trash: [
      "~/.cache/kopia",
      "~/.config/kopia",
      "~/.config/KopiaUI",
    ]
  end

  url "https://github.com/kopia/kopia/releases/download/v#{version}/KopiaUI-#{version}#{arch}.#{os}"
  name "KopiaUI"
  desc "Backup/restore tool"
  homepage "https://kopia.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
