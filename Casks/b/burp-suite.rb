cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.6"
  sha256 arm:   "709a014d0398da2b840a200418e0dfe51fcfb1fb70d44ebf1465973c84e17f8b",
         intel: "3b71b4ba81de250c5589381a8f8708d5985414d49e25c0ffd4cb1e315d4ae545"

  url "https://portswigger-cdn.net/burp/releases/download?product=desktop&version=#{version}&type=#{arch}",
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
              item["categories"]&.include?("Desktop") &&
              item["builds"]&.any? do |build|
                build["BuildCategoryId"] == "desktop" &&
                build["BuildCategoryPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite@early-adopter"
  depends_on :macos

  app "Burp Suite.app"

  zap trash: "~/.BurpSuite"
end
