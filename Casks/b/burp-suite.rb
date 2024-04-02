cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.2.1.3"
  sha256 arm:   "f7152a0b05b6b4e2f38d3a576925b12653b79f9906686b7094563171a08e87b4",
         intel: "4d230ba0531b6f2ba00f69ddd8689e494e776686498df60a2a0eeb8a8d0cd60e"

  url "https://portswigger-cdn.net/burp/releases/download?product=community&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
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
