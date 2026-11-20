cask "sabaki" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.60.0"
  sha256 arm:          "b088788113a84748d75f63067efb99a98e95e0229dfb03d565295c70c524ed50",
         intel:        "c44b9f253351e84d91b40cfd51257d12fc6772980791fbdf42e253f7f17ca992",
         arm64_linux:  "ceb8eb4c67385f8275822f35ece3879ae7164bf00ae21e411e6828901f49c467",
         x86_64_linux: "51105f5308b4f563ffd9284e17508fe2a52a3662457ed8a0c3f23308d4a026ff"

  on_macos do
    depends_on macos: :monterey

    app "Sabaki.app"

    zap trash: [
      "~/Library/Application Support/Sabaki",
      "~/Library/Preferences/de.yichuanshen.sabaki.plist",
      "~/Library/Saved Application State/de.yichuanshen.sabaki.savedState",
    ]
  end
  on_linux do
    app_image "sabaki-v#{version}-linux-#{arch}.AppImage", target: "Sabaki.AppImage"

    zap trash: "~/.config/Sabaki"
  end

  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-#{os}-#{arch}.#{url_end}"
  name "Sabaki"
  desc "Go board and SGF editor"
  homepage "https://sabaki.yichuanshen.de/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
