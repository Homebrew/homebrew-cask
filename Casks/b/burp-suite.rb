cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.3.4"
  sha256 arm:   "3bbc212c3c8f11a51b17703fb548d4205403fa5bce2d3a04d6be6b1b21da9be6",
         intel: "158fe5cfb1d08f1bf2183f2e46be70ebf18f52bc0b5315ea6d5388c5433cd340"

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
