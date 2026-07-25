cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.7.1"
  sha256 arm:   "eb950e39d44a0ef13918f2eefc9986a3b97423e7bd59ce2175e9e5d9806148a2",
         intel: "6521f84af97cb5490588e42900fcc879fc68b6693c4dc31f2eb3b218e8c29344"

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
