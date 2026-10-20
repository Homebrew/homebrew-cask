cask "tabularis" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.29.0"
  sha256 arm:          "0b5dd80f0a3f03b9f1ae2fe706ddab6311da5a71ae18de93d2f6a76a047ae2c3",
         intel:        "bc93edbc4ebb779f0da66404a3ceb7830b18386a45c2e28f34c698c7370536c4",
         x86_64_linux: "d2544ffd0552ca21b12961a2c5f67edeece71100dcb1886c6b1db02c95eaedac"

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
