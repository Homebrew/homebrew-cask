cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.6.0"
  sha256 arm:          "28fdc89cbc42987dfd1c47e4d6f198eb8ab8c4cee9a38ce44bfb1788ede2c83a",
         intel:        "28fdc89cbc42987dfd1c47e4d6f198eb8ab8c4cee9a38ce44bfb1788ede2c83a",
         arm64_linux:  "e9b256760df992d95e4a8c503767694ad045373bbd68dc0be4d7fd6fb5546951",
         x86_64_linux: "b203d21789b2e750b49b24748aa380ae8659fd0c7c93a1538f2dff3615b6b054"

  on_macos do
    depends_on macos: :ventura

    app "p2p.kiwi.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    app_image "p2p-kiwi_#{arch}.AppImage", target: "p2p.kiwi.AppImage"
  end

  url "https://github.com/dont-be-evil-company/p2p.kiwi/releases/download/v#{version}/p2p-kiwi_#{url_end}"
  name "p2p.kiwi"
  desc "Cross-platform screen sharing tool"
  homepage "https://p2p.kiwi/"
end
