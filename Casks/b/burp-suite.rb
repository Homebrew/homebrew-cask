cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.9.4"
  sha256 arm:   "574b4addcf4acff8c6d3cc12f1cc3773adcac6a456d75891fe0e3e4230c9885c",
         intel: "8f3d1825e20f430e33e5f0f97c6052c6192566c68ac4ee81a62f6ce3cac0df85"

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
