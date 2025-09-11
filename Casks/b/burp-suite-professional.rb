cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.8.3"
  sha256 arm:   "b09b444e109630890a7e8adc42dac12529cac2caa2766cb0d91223bf4f16a6ab",
         intel: "2e5851ba8c83a6168ddb6facf1a4536dd6e342dd0aa03b8da654bc7d2ef34e75"

  url "https://portswigger-cdn.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json.dig("ResultSet", "Results")
      next if all_versions.blank?

      all_versions.filter_map do |item|
        item["version"] if
              item["releaseChannels"]&.include?("Stable") &&
              item["categories"]&.include?("Professional") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite-professional@early-adopter"
  depends_on macos: ">= :catalina"

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
