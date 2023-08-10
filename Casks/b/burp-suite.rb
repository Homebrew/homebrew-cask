cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.9.1"
  sha256 arm:   "2b574d5c8fd547db32a72b9a3bfa0f8ea9c5988cf9009b532c019d0c48271907",
         intel: "9bd4160e6d5b0f2214bc3b9e3174e92cdd92283dc2e68ec3bcbf9b0471c0b880"

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
