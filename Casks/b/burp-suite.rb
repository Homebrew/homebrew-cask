cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.10.6"
  sha256 arm:   "a9a70daf2f97c4b58455f061a099258a471881fec7e7d849284131b6b50c787d",
         intel: "f86517392424dd2491eb4b367a15cfbdb64653f6d68670a02eceadbce4b4e5f1"

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
