cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.4.3"
  sha256 arm:   "86e8eda2e6ebfd2d7c5ff34bb82bf4872f814cd27beb90535460a37c892c80c2",
         intel: "8919a177167f0230eb25b0226ffbd6b3de49549a4a33d2ce2c38e2df84d937b9"

  url "https://portswigger-cdn.net/burp/releases/download?product=desktop&version=#{version}&type=#{arch}",
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
              item["categories"]&.include?("Desktop") &&
              item["builds"]&.any? do |build|
                build["BuildCategoryId"] == "desktop" &&
                build["BuildCategoryPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite-professional@early-adopter"
  depends_on :macos

  app "Burp Suite.app"

  zap trash: "~/.BurpSuite"
end
