cask "nook" do
  version "1.7.0"
  sha256 "54d0db8e13934da97568f4a693a7b3f2eb5654a2578b701c433cc1e0c21af201"

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
