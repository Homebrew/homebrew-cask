cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.1.4"
  sha256 arm:   "de9a3a5fb9aa4f14cd70132d66d0beb48c5c70d044f5bd656d49c262a3f0b7f4",
         intel: "77845795b8b5ffe9c0ab7d832428f86a5c9eb5199f2cd7ddd3e3b865a6319784"

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

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
