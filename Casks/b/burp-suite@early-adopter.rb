cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.6"
  sha256 arm:   "4d70903cdb91239471ba7175f35d58cc4c7a9621b8250710da38c7ff518787ae",
         intel: "87f6b85a5fe717da444330a2977d21f68a0ee2b6bb655e1ab3e0902a34dea7b9"

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
