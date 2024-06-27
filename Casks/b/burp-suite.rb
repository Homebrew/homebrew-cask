cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.5.4"
  sha256 arm:   "20f81a01790b8b0502b1cf51cb66e23ee0c32233ac18b8f2b59d1e4300cb194a",
         intel: "538fe7d7143478e195b2a71843118d2d655b15ed8640157a536cbd3a5c2fbe78"

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
