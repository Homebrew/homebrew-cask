cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.12.5"
  sha256 arm:   "767abf6f3b5ffe5a91c4a8397952efa411daec47091392b103a718ff36d6de2f",
         intel: "e7daca94f3142e4d186cd0e9cad4e3189b982ab71a95ba8b455562c5ba46ec9d"

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

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
