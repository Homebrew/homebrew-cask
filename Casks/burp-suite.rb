cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.7.3"
  sha256 arm:   "758b49680359193645098b38bca21293c8f7046631d55acf2e25f65d9ccf1940",
         intel: "32b5e3293ed226ad74dbe5545dc1e328e7e4171f67b80ec0a4221e9e342595a3"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=#{arch}"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Community") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end.compact
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
