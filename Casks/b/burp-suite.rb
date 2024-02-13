cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.12.1.5"
  sha256 arm:   "852e9da99cac65347dc63081ac6040c9eed549753869306324df1d363c3c0c59",
         intel: "fd919bc00981979516c78e8e5357f7ef4a27d52c3a2b98f6d04f2e6a86982ee4"

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
