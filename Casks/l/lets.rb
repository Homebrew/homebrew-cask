cask "lets" do
  version "3.1.1"
  sha256 "d07d17b9feaf1f4953ca4bf1c56871c830019160276bc8d0c3ccf83d90709282"

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

  depends_on :macos

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
