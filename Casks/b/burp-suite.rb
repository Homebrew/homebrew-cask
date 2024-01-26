cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.12.1.3"
  sha256 arm:   "a828b14585990fd6717145973883300890e650839d8a127c8f76d78a1c2cee7f",
         intel: "4fecb0c53eedbb925e532e552366c975a3d3ba36883bbcb2dcddb9f6ab7611c4"

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
