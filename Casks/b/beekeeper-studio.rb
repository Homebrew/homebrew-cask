cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.0.5"
  sha256 arm:          "cb2f0e3ac743a69d15d2cb5ba2a48f5679304d6c8fdc10b77a8d08d635b16183",
         intel:        "209fdc1eecbb9f472d6a965462df74bc85a849498a410c70ce2e97f78809fb34",
         arm64_linux:  "5caa6171688717bbd26f888b2068ef67bb23a1d6dfed2c1530e02489e6335d89",
         x86_64_linux: "40ac2c50a5ae7c978067f75823fb4724e849a8b8445ccb8fcb7404f10915e820"

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

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}#{arch}.#{os}"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
