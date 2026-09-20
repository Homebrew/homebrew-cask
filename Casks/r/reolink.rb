cask "reolink" do
  version "8.21.12,2026.07,230926448887f151e9d6d10f"
  sha256 "a4b94c4fddcf4da25eee72bf421a1f790345c98b4675b1935ad1a37dab218103"

  url "https://home-cdn.reolink.us/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/#{version.csv.third}.dmg"
  name "Reolink Client"
  desc "Client for viewing and managing security cameras and NVRs"
  homepage "https://reolink.com/software-and-manual/"

  livecheck do
    url "https://reolink.com/wp-json/reo-v2/download/?type=clients&lang=en"
    regex(%r{/uploads/(\d+)/(\d+)/(\h+)\.dmg}i)
    strategy :json do |json, regex|
      item = json.dig("data", "downloads")&.find { |download| download["type"] == "mac_client_apple_silicon" }
      next if item.blank?

      match = item["url"]&.match(regex)
      next if item["version"].blank? || match.blank?

      "#{item["version"]},#{match[1]}.#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Reolink.app"

  zap trash: [
    "~/Library/Application Support/com.reolink.app.client",
    "~/Library/Application Support/CrashReporter/Reolink_*.plist",
    "~/Library/Application Support/reolink",
    "~/Library/Caches/com.reolink.app",
    "~/Library/Caches/com.reolink.app.ShipIt",
    "~/Library/HTTPStorages/com.reolink.app",
    "~/Library/Logs/reolink",
    "~/Library/Preferences/ByHost/com.reolink.app.ShipIt.*.plist",
    "~/Library/Preferences/com.reolink.app.plist",
  ]
end
