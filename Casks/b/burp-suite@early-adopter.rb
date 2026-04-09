cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.3.1"
  sha256 arm:   "c0797b36873456bc6e28b2865e7d9f9c7cea091f0638e85ebbced71287966427",
         intel: "63d2382254e278d431eb85f38f0872803838479ae72c46274785999d5cc0cc3a"

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
              item["releaseChannels"]&.include?("Early Adopter") &&
              item["categories"]&.include?("Community") &&
              item["builds"]&.any? do |build|
                build["BuildCategoryId"] == "community" &&
                build["BuildCategoryPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
