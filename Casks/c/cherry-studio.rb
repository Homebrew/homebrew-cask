cask "cherry-studio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.7"
  sha256 arm:          "2ecaeb6de6b902d1932d913491b248cbbc56619752ddbed3f3b24a2bc3ae77d6",
         intel:        "70536075f7be84357cb010ef7f832b882ce95957a8ea93fb9ad3a3fb6d7ec743",
         arm64_linux:  "dcb97873a9ee2ae4ebff2fc4a77359c7ac2769bb32bf1e6aeeb47a56b6d88b04",
         x86_64_linux: "0942a15496bea643aa4ba561472aed4e05fb716ccdc96092fbd69c00cff94d24"

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
