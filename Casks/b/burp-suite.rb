cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.1.5"
  sha256 arm:   "6624f13952897e57e58edbbb72779107b3b5b4f4d9e8c9831d7a57045d5f6ef9",
         intel: "5cdfab619af613c0b6ef6759d5406d00215b38fb5537d62775fb5c144e38a5be"

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
