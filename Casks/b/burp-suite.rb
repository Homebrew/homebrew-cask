cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.6.4"
  sha256 arm:   "31cc9f91326e76928d34864ae9dd4bf95a18037776a6fe84706765769a9817cc",
         intel: "bafbe3dffe7818da1caf8d6a97deadd4d736b74d7ec36adc2df8475195e678b2"

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
