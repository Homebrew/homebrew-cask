cask "sony-ps-remote-play" do
  version "7.0.3"
  sha256 :no_check

  url "https://remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg"
  name "PS Remote Play"
  desc "Application to control your PlayStation 4 or PlayStation 5"
  homepage "https://remoteplay.dl.playstation.net/remoteplay/lang/en/"

  livecheck do
    url :homepage
    regex(/Version\s*v?(\d+(?:\.\d+)+)\s*for\s*Mac/i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "RemotePlayInstaller.pkg"

  uninstall pkgutil: "com.playstation.RemotePlay.pkg"

  zap trash: [
    "~/Library/Application Support/Sony Corporation/PS Remote Play",
    "~/Library/Application Support/Sony Corporation/PS4 Remote Play",
    "~/Library/Caches/com.playstation.RemotePlay",
    "~/Library/Cookies/com.playstation.RemotePlay.binarycookies",
    "~/Library/HTTPStorages/com.playstation.RemotePlay.binarycookies",
    "~/Library/Preferences/com.playstation.RemotePlay.plist",
    "~/Library/WebKit/com.playstation.RemotePlay",
  ]

  caveats do
    requires_rosetta
  end
end
