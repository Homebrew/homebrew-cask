cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.6.0"
  sha256 arm:          "87451bd41b52af122feffc24d87e6fc8f43a57f6d6e40c56e20e06b4a5ff9d0e",
         intel:        "2f60f425f4aba7a731404f6e05864ef8ddc3db87627dfb495fa99a0535bc91fa",
         x86_64_linux: "5e9b803ac9f39099ffd99be675f3f74f79a2cd6df9a96044707325d7c69d2d65"

  on_macos do
    depends_on macos: :ventura

    app "Blockstream.app"

    zap trash: [
      "~/Library/Application Support/Blockstream/Green",
      "~/Library/Caches/Blockstream/Green",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Blockstream-#{arch}.AppImage", target: "Blockstream.AppImage"
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
