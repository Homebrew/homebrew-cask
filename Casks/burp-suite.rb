cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.12.4"
  sha256 arm:   "d33644b9eb6c80463ac56f3aa4e2fd6fa79c7f5284b7a57eb3c873ce98bc1c3a",
         intel: "94487ee7fb2fa83c01c4a618947ef18c28373ab14a45e184f8a91861a5766846"

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
