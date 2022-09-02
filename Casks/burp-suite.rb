cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.8.3"
  sha256 arm:   "7cb119f30e7290dd1f7cc9687913a8c6d8af356f34a514c14a4fd9337f56fa23",
         intel: "5742b990029c4d1b7d06ae760e96bba0e1518746eafe30ab22aa2f3055e1a808"

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
