cask "burp-suite-professional@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.8.2"
  sha256 arm:   "55074d2fbee7e5b28e0a652ef2264997aed492007fc588ea924932ce296bb4d1",
         intel: "4e150cb407acde9fe820f859628e963d117fe7a41cc49a8908a79d0a49f9c8c6"

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
              item["releaseChannels"]&.include?("Early Adopter") &&
              item["categories"]&.include?("Professional") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite-professional"
  depends_on macos: ">= :catalina"

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
