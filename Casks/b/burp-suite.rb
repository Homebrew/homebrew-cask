cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.11.2"
  sha256 arm:   "6775519f15448d60db3020e784f0058ac489025a0216a4cc5ccff4f1645bf35e",
         intel: "ca659f994d9f4f9e19a00f76b2e752cd96f777a3e8b23e5d39bde5106d9e7e05"

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

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
