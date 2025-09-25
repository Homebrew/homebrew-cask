cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.8.6"
  sha256 arm:   "fe57621461d76d8fd3e6b71bbd3e33a02193429c282248b4572b75662538a6c0",
         intel: "b204d30e3d00a7e4bb354baff4458c0917e11f1bb7b11e9b05bcb40becab102e"

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
