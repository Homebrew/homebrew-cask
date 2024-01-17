cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.11.1.5"
  sha256 arm:   "d35a33a87c736dac39fe0ba7cda0f53d5bbf62b868b64803028ada7daddc4e7d",
         intel: "4504d4a8b060379d06abb0d5498d72a22bde40c218b5989276d658fdcaec074b"

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
