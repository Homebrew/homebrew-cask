cask "axolotl-launcher" do
  version "1.7.5"
  sha256 "3e89a51eabc5b60425b598142e3cad5b1182b81f5613596138bd95f576abcb45"

  url "https://github.com/Mystic-Stars/Axolotl/releases/download/v#{version}/Axolotl.Launcher_universal.app.tar.gz"
  name "Axolotl Launcher"
  desc "Minecraft launcher"
  homepage "https://axlmc.org/"

  # strategy :git won't work as there is unreleased higher-versioned tags
  livecheck do
    url :url
    strategy :github_releases
  end

  auto_updates true
  depends_on :macos

  app "Axolotl Launcher.app"

  zap trash: [
    "~/Library/Application Support/red.ghs.axolotl",
    "~/Library/Caches/red.ghs.axolotl",
    "~/Library/WebKit/red.ghs.axolotl",
  ]
end
