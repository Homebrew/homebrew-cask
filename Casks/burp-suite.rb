cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.11.3"
  sha256 arm:   "2df0875d159ee23818fe19bb932b893f96bf7d1283a6e179c02a2c5579417a83",
         intel: "0f78c7f3c30d12a03b67061fef62385e073aacc4dc1f0f2f3bae54501e29e7dd"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=#{arch}"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :page_match do |page|
      all_versions = JSON.parse(page)["ResultSet"]["Results"]
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
