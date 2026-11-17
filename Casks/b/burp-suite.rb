cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.11.1"
  sha256 arm:   "08f062262fe7a9d6038bd6367a8dd81fe8612f4622a5a9f52e19f5858c620fbd",
         intel: "f93bf07e64847e0948053a4e623b9c07e68bb9bdd95d19caf84da12c19c54f9b"

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
