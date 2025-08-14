cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.7.3"
  sha256 arm:   "1cc1cb21b5b37233c61b67ec3a8fa942df97870e6d205d4e7969105c014ddc7b",
         intel: "96a3943bc70e85c03f7df7b96d4b7bd538c53ad294a487852b42d97f9dece86a"

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
