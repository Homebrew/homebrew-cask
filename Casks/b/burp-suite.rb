cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.7.6"
  sha256 arm:   "3da60946d76291daaac781c54656573cdc301865bb69d1326b8857e4dedff4f8",
         intel: "72ca962c75f79d16848ed95c6ab46e082e6acbc4af6d1e82ea40d6015b18e00b"

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
