cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.11.3"
  sha256 arm:   "54b1e1f2d8b275a7f94fa88edb99bfdf06dcb908b92f2027cbf8004d09bb7cbc",
         intel: "2a3e644b6804160dcdef4675bd2473777e0aea70b95a31ddcda6ebf4238b9991"

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
