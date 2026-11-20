cask "taskbar" do
  version "1.6.3,2026,09"
  sha256 "6754d2b90b9201685fb6bcb978c96274e626fbda91446b70ed361d29048ebb01"

  url "https://lawand.io/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/taskbar-#{version.csv.first}.zip"
  name "Taskbar"
  desc "Windows-style taskbar as a Dock replacement"
  homepage "https://lawand.io/taskbar/"

  livecheck do
    url "https://raw.githubusercontent.com/lawand-dot-io/taskbar/main/appcast.xml"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Taskbar.app"

  zap trash: [
    "~/Library/Caches/com.fpfxtknjju.wbgcdolfev",
    "~/Library/HTTPStorages/com.fpfxtknjju.wbgcdolfev",
    "~/Library/LaunchAgents/com.fpfxtknjju.wbgcdolfev.plist",
    "~/Library/Preferences/com.fpfxtknjju.wbgcdolfev.plist",
    "~/Library/WebKit/com.fpfxtknjju.wbgcdolfev",
  ]
end
