cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.11.6"
  sha256 arm:   "947a6c006fbf332cfce7778556c82199be3711a8faeef8722e995a9269e73a79",
         intel: "dc4d440c1630ddd3a6b850b48e06085d0cf3b0685a6cb7eb0d582341d31a7f81"

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
