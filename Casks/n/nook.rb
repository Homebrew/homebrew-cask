cask "nook" do
  version "1.1.0"
  sha256 "5351a339924c7d5bf30fe4ff951af36f780e3cacfb1c0eb5dedb18aa78a85383"

  url "https://github.com/nook-browser/Nook/releases/download/v#{version}/Nook-v#{version}.dmg"
  name "Nook"
  desc "Minimal browser with a sidebar-first design"
  homepage "https://browsewithnook.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :tahoe

  app "Nook.app"

  zap trash: [
    "~/Library/Application Support/Nook",
    "~/Library/Caches/io.browsewithnook.nook",
    "~/Library/Preferences/io.browsewithnook.nook.plist",
  ]
end
