cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.8.5"
  sha256 arm:   "5bf4f38711f2f0e54b554b19acb89911c8820eac90543c96fad4ad348f8e70b1",
         intel: "c555934b82b65c1db1d9427d6530e21e72249040e39d89f59d6574178f10f327"

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
