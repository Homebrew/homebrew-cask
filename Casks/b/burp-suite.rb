cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.10.1"
  sha256 arm:   "396a0f29aced8fdd61b04af8caa5ce6c4f92c0d3468f94b8b8e415066f6abf5f",
         intel: "3586e8f6d67e8ebf8b9bbf3b9b4ef88f7a39a2d7e5cb2e5e9faa15f8249933a8"

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
