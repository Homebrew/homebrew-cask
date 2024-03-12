cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.1.1.6"
  sha256 arm:   "ac53f8e492c22ac09b3723100d3d97c147bca184b8b232d20adee5fd36e49afe",
         intel: "1c1948d7ba0584c49a697aa9630dd7faea1b6744eed5b54cdda9c65e41365402"

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
