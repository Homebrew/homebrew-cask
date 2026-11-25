cask "last-window-quits" do
  version "1.1.6,2026,10"
  sha256 "56aaf1efcc3b3a9f10c6cf2ca7fdaccf4ae30deabe049b4f2012fc7293d06127"

  url "https://lawand.io/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/last-window-quits-#{version.csv.first}.zip"
  name "Last Window Quits"
  desc "Automatically quit apps when their last window is closed"
  homepage "https://lawand.io/last-window-quits/"

  livecheck do
    url "https://raw.githubusercontent.com/lawand-dot-io/last-window-quits/main/appcast.xml"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Last Window Quits.app"

  zap trash: [
    "~/Library/Application Support/io.lawand.last-window-quits",
    "~/Library/HTTPStorages/io.lawand.last-window-quits",
    "~/Library/LaunchAgents/io.lawand.last-window-quits.plist",
    "~/Library/Preferences/io.lawand.last-window-quits.plist",
    "~/LWQ Debug Logs",
  ]
end
