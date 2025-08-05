cask "lets" do
  version "3.1.0"
  sha256 "24ee0b7e6a9bfc27102b309b43b58f6941e8b3d1db68fa7da3e2bb3a4c0f3544"

  url "https://d1lzipub3cpsx.cloudfront.net/download/apps/2/#{version}/LETS-Installer.zip",
      verified: "d1lzipub3cpsx.cloudfront.net/"
  name "LETS Desktop App"
  name "LETSデスクトップアプリ"
  desc "Font manager for Fontworks' LETS"
  homepage "https://lets.fontworks.co.jp/"

  livecheck do
    url "https://lets.fontworks.co.jp/download"
    regex(/class="c-download__txt"[^>]*?>macOS[^<]*?(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :mojave"

  installer manual: "LETS-Installer.app/Contents/MacOS/LETS-Installer"

  uninstall launchctl: "LETS",
            quit:      "jp.co.fontworks.LETS",
            delete:    [
              "/Applications/Fontworks/LETS",
              "/Applications/Fontworks/LETS-Ver#{version}",
            ],
            rmdir:     "/Applications/Fontworks"

  zap trash: [
    "/Library/Application Support/Fontworks/LETS",
    "/Library/LaunchAgents/jp.co.fontworks.LETS.plist",
    "~/Library/Application Support/Fontworks/LETS",
    "~/Library/Caches/jp.co.fontworks.LETS",
    "~/Library/HTTPStorages/jp.co.fontworks.LETS",
    "~/Library/HTTPStorages/jp.co.fontworks.LETS.binarycookies",
    "~/Library/Preferences/jp.co.fontworks.LETS.plist",
  ]
end
