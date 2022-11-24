cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.9.6"
  sha256 arm:   "ed893b4b6c0231c15e8d9b80ce124d9446e4b6465fc2d8534cadf6275ececd0b",
         intel: "72c743f1c8a4f812209ff75d81a9bb1a6ecae24ef9e1a14ceafb13ec9dc88f2a"

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
