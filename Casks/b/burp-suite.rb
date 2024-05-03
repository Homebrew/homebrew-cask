cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.3.1.4"
  sha256 arm:   "2b340c7a64e8ef48e43b23da05846af63bb0ee76e297c64ef46474d7d25a8f0b",
         intel: "1b26b7e2b32bb80d61471c40ff249f8c3a929fc9450f7b02952b840e3153fdbf"

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
