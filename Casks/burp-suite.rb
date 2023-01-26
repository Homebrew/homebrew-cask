cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.12.7"
  sha256 arm:   "f0d10bab90c8f2eb96eacd5f99bf7696e0a7e7075a84ae6a4b147330d7689a4e",
         intel: "06ca10e150b00881b62cb33ba9808f5c3307cbaf171c05f09b71dbed95580f23"

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
