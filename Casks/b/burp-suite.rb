cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.8.2"
  sha256 arm:   "39a2992b75bf706de8b16289a45584771dc71100e9195e4db9c9e258537cc7be",
         intel: "9e4158df22ad42dc4091c4f005b93b1b123dc1a80ac5f208e44c7a2e93b11cbd"

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
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Community") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
