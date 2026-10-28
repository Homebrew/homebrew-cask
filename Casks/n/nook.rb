cask "nook" do
  version "1.4.0"
  sha256 "db005db8cd1d0b1f5d859a2b0d0b56f1d1a6661dd93acf609d908cefefbed6d7"

  url "https://github.com/nook-browser/Nook/releases/download/v#{version}/Nook-v#{version}.dmg"
  name "Nook"
  desc "Minimal browser with a sidebar-first design"
  homepage "https://browsewithnook.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sequoia

  app "Nook.app"

  zap trash: [
    "~/Library/Application Support/com.gstudios.nook",
    "~/Library/Application Support/Nook",
    "~/Library/Caches/com.gstudios.nook",
    "~/Library/Caches/io.browsewithnook.nook",
    "~/Library/HTTPStorages/com.gstudios.nook*",
    "~/Library/Preferences/com.gstudios.nook.plist",
    "~/Library/Preferences/io.browsewithnook.nook.plist",
    "~/Library/WebKit/com.gstudios.nook",
  ]
end
