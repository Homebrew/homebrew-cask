cask "bdash" do
  version "1.35.0"

  url_end = on_system_conditional linux: ".AppImage", macos: "-universal-mac.zip"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}#{url_end}"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 "e8676ad4420a727590fea4db1c4e49393e18abad7309778584cda4784af8d7a3"

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
    sha256 "484a34f6f7ab282f786803fcaa602cac71fd6a9bc6c0844265db2663f12de114"

    depends_on arch: :x86_64

    app_image "Bdash-#{version}.AppImage", target: "Bdash.AppImage"
  end
end
