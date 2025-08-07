cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.7.2"
  sha256 arm:   "e7bd31d022b7e0ce8f9d862c04c3a4311e96b202f1add454644c22f344c0cb0b",
         intel: "0549c7c93c3ea542da4307ed6dfe4907a17bb91550db0ce16bc8e1fef28dfb36"

  url "https://portswigger-cdn.net/burp/releases/download?product=community&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
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
              item["categories"]&.include?("Community") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite@early-adopter"
  depends_on macos: ">= :catalina"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
