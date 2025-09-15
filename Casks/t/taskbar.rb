cask "taskbar" do
  version "1.4.6,2025,08"
  sha256 "f24fda4ad63d5698cd7c8ce5985febaa6267bac8f6aad7b0f059ecdc931ba19c"

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

  app "Taskbar.app"

  zap trash: [
    "~/Library/Caches/com.fpfxtknjju.wbgcdolfev",
    "~/Library/HTTPStorages/com.fpfxtknjju.wbgcdolfev",
    "~/Library/LaunchAgents/com.fpfxtknjju.wbgcdolfev.plist",
    "~/Library/Preferences/com.fpfxtknjju.wbgcdolfev.plist",
    "~/Library/WebKit/com.fpfxtknjju.wbgcdolfev",
  ]
end
