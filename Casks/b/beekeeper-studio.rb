cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.1.0"
  sha256 arm:          "9b91df902f3172daab4ecc4dfe4d458cb8459f7c6554305b31b8a267a038f727",
         intel:        "28b6500aae6c808efdbe9b8d6320db772b67c0246b77a070166e1ac622500e35",
         arm64_linux:  "f1a86c33db77e309e5171f6f981f2648fa70fa0bd8d5bed030479e915c7394a9",
         x86_64_linux: "53590bc4dd2275a60919bc7fdd29bad8563dd21ff95ebed10ae8b72c3ce210fd"

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
