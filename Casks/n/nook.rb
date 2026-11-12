cask "nook" do
  version "1.6.0"
  sha256 "5be217b8d39d738031387a4cf2175917cfd4baf16164d15546314a752aecc091"

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
