cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.29.0"
  sha256 arm:          "98f19aecbd59eb6ce8bcd83e1af94b127118a121538ee68445f42ad665b53c23",
         intel:        "98f19aecbd59eb6ce8bcd83e1af94b127118a121538ee68445f42ad665b53c23",
         arm64_linux:  "dc18c1ef1757551c550cd16e6561e457406b672cc0db369599a61547e5ffb618",
         x86_64_linux: "884da60b23a2e443133de8502dce78c3ccba1f955d6ae8f418cc2737868cc782"

  on_macos do
    app "SolidCraft.app"

    zap trash: [
      "~/Library/Application Support/SolidCraft",
      "~/Library/Preferences/ai.storyteller.solidcraft.plist",
    ]
  end
  on_linux do
    app_image "solidcraft-#{version}-linux-#{arch}.AppImage", target: "SolidCraft.AppImage"

    zap trash: "~/.local/share/solidcraft"
  end

  url "https://github.com/tangency-labs/solidcraft/releases/download/v#{version}/solidcraft-#{version}-#{url_end}"
  name "SolidCraft"
  desc "Parametric 3D CAD modeller"
  homepage "https://solidcraft.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
