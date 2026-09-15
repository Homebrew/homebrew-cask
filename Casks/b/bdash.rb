cask "bdash" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "1.35.2"
  sha256 arm:          "31eb841fd8746bad9b8b785ec7cb04e8454a19439688ebd14f65e71e9cd28f74",
         intel:        "31eb841fd8746bad9b8b785ec7cb04e8454a19439688ebd14f65e71e9cd28f74",
         x86_64_linux: "f482a0ebea0d5b17d581e30b920f62fd668749c83f7347fe96c98b4c7aeaa7d9"

  on_macos do
    depends_on macos: :monterey

    app "Bdash.app"

    zap trash: [
      "~/.bdash",
      "~/Library/Application Support/Bdash",
      "~/Library/Logs/Bdash",
      "~/Library/Preferences/io.bdash.plist",
      "~/Library/Saved Application State/io.bdash.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Bdash-#{version}.AppImage", target: "Bdash.AppImage"
  end

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}#{os}"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end
end
