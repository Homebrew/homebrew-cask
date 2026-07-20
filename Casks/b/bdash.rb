cask "bdash" do
  version "1.35.1"

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
    sha256 "ba56bebc97f714a95ad5dfdcb52b49d55cfd08ebad4235211488632d1128d990"

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
    sha256 "f1aa573012cc3a55f86ca313116b9269f94651ae815dcc5a1a5754d7df520b72"

    depends_on arch: :x86_64

    app_image "Bdash-#{version}.AppImage", target: "Bdash.AppImage"
  end
end
