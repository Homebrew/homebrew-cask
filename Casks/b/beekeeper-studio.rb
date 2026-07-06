cask "beekeeper-studio" do
  arch arm: "-arm64"

  version "5.9.0"
  sha256 arm:          "4e8412e8e82b19c078e7bc0cdb6baac17add1da973d789b439e778fff4b17aa0",
         intel:        "7e88e74da14e17225e89d07c9a6939836d7bba80ec887fd6522670e84b800958",
         arm64_linux:  "5b9cecca6412e459035a8aee7084f7910dc044e9fa14bdbbd8ac798bd53bfb7b",
         x86_64_linux: "67322027f90f80261741a49b33855b2592147063fdb62b526811977230f797bf"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}#{arch}#{url_end}",
      verified: "github.com/beekeeper-studio/beekeeper-studio/"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "Beekeeper Studio.app"

    zap trash: [
      "~/Library/Application Support/beekeeper-studio",
      "~/Library/Application Support/Caches/beekeeper-studio-updater",
      "~/Library/Caches/io.beekeeperstudio.desktop",
      "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
      "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
      "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
      "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
    ]
  end

  on_linux do
    app_image "Beekeeper-Studio-#{version}#{arch}.AppImage", target: "Beekeeper Studio.AppImage"
  end
end
