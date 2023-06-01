cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.5.2"
  sha256 arm:   "da77abf7ab1b2c5ebef150fe75fc303573f6bb753612498f4f60d5ae005baf47",
         intel: "c9491eb9535e45da7908451046daafea59f7f7be4543ae413c5c3f6ef1c4ace0"

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
