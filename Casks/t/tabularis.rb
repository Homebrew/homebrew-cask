cask "tabularis" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.31.0"
  sha256 arm:          "0daa88bd5db64bd18835aa1bb9ab461fc1bc7211733b89016190b176e086912c",
         intel:        "49d8a7686aa07de7438f4167527f28dda4ec5ebc389d8ceb007bc5aacfd18280",
         x86_64_linux: "09eb2192aae7afdf2179424599319eb33376c023bd6778c0db520dcc0a5d71bf"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "tabularis.app"

    zap trash: [
      "~/Library/Application Support/tabularis",
      "~/Library/Caches/tabularis",
      "~/Library/Logs/tabularis",
      "~/Library/Preferences/com.debba.tabularis.plist",
      "~/Library/Saved Application State/com.debba.tabularis.savedState",
      "~/Library/WebKit/tabularis",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "tabularis_#{version}_amd64.AppImage", target: "tabularis.AppImage"

    zap trash: [
      "~/.config/tabularis",
      "~/.local/share/applications/tabularis-handler.desktop",
      "~/.local/share/tabularis",
    ]
  end

  url "https://github.com/TabularisDB/tabularis/releases/download/v#{version}/tabularis_#{version}_#{arch}.#{os}"
  name "Tabularis"
  desc "Lightweight database management tool"
  homepage "https://tabularis.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "tabularis@nightly"
end
