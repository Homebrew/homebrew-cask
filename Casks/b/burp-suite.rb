cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.9.1"
  sha256 arm:   "df1f286ca447cd0661915b3d7586c5e8ddbaf16ce1043732d8bf999633d60fa7",
         intel: "85c05592d930ceb7139e28bb38697d1c4a3d454c64ac2e1d19c65c1cbd775e01"

  url "https://portswigger-cdn.net/burp/releases/download?product=desktop&version=#{version}&type=#{arch}"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json.dig("ResultSet", "Results")
      next if all_versions.blank?

      all_versions.filter_map do |item|
        item["version"] if
              item["releaseChannels"]&.include?("Stable") &&
              item["categories"]&.include?("Desktop") &&
              item["builds"]&.any? do |build|
                build["BuildCategoryId"] == "desktop" &&
                build["BuildCategoryPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite@early-adopter"
  depends_on :macos

  app "Burp Suite.app"

  uninstall quit: "com.install4j.6592-1155-2163-3973.70"

  zap trash: [
    "~/.BurpSuite",
    "~/Library/Preferences/com.install4j.6592-1155-2163-3973.70.plist",
  ]
end
