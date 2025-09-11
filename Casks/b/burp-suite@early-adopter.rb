cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.9"
  sha256 arm:   "88c51c4b0ca145e36172ea540fe3d4191c3ba4595fc9e428e06cdae272c8e16a",
         intel: "3cba182aae56798cacb98d3e84a84809c6100f1eae0006ff268537a9b111f9de"

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
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite"
  depends_on macos: ">= :catalina"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
