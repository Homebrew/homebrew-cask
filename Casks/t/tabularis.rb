cask "tabularis" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.30.0"
  sha256 arm:          "f9d88e8ca92dbb907703049134ed7dbe0b47a350af78aa3bd579a0bfb11459a6",
         intel:        "b59e79521427d2a87392c76a41f2b2aad41701615fbc954ff1924e346c71cb25",
         x86_64_linux: "7757acbdb21a3b499b5590aff4a21c6de2c9e727f5f81e68b2344b9b37af5244"

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
