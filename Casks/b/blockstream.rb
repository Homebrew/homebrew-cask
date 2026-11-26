cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.7.0"
  sha256 arm:          "b118b43be3e065d450d40c9f8f8d6bc6c4a4a7bb31afdb7fbaffcbd51b383fa3",
         intel:        "e863e8a61207e81ab9beb7df6f8822f57775662963062d1a0339419c1b7913cb",
         x86_64_linux: "2cdad420ff71f32b826a043c3a9577a91756caafa0a5ec52b306ef4a3a2797a3"

  on_macos do
    depends_on macos: :sonoma

    app "Blockstream.app"

    zap trash: [
      "~/Library/Application Support/Blockstream",
      "~/Library/Caches/Blockstream",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Blockstream-#{arch}.AppImage", target: "Blockstream.AppImage"

    zap trash: [
          "~/.cache/Blockstream/Blockstream",
          "~/.local/share/Blockstream/Green",
        ],
        rmdir: [
          "~/.cache/Blockstream",
          "~/.local/share/Blockstream",
        ]
  end

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.#{url_end}"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
