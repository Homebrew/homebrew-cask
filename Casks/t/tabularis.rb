cask "tabularis" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.28.0"
  sha256 arm:          "0fc5c09a0f3971cdded84851021de5d252fda76a9234e7df834652cdca35dc37",
         intel:        "627337112b9e74f5ee5a2de4830782ca6ec7b1e1a9bb7a89ea9caae2e3b36423",
         x86_64_linux: "75e0a7a6970f85d18f58aa61ac2e6c9933bc94554577670fbd64a57a570b2c02"

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
