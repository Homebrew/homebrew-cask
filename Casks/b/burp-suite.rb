cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.6.5"
  sha256 arm:   "17c6e78ce9fe777e2943df6f77d18b7f9c2a7a1ef286bc118c3d36831c85908c",
         intel: "533108913aaaba0b08ccd7051a9a3b3885856ddf2afdc0660a920546c8b211d3"

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
  depends_on macos: ">= :catalina"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
