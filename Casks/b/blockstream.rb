cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.6.1"
  sha256 arm:          "41dd9a5ac365ddde2a950256f4bce9cac31d5f660f3a2b3793af5d753426cb47",
         intel:        "3597c67979543b4bbaf72f97d0a948ce79da223314802f0ceb947c8dd2aad8b1",
         x86_64_linux: "7dbb4cf8104b0e9fbffc0ab38e21bdccebe7332b45c0bd73c0c9eef72b73471c"

  on_macos do
    depends_on macos: :ventura

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
