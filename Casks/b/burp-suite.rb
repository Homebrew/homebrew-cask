cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.4.4"
  sha256 arm:   "77c747ae28fa71b9eb11dea7e754d1c67b5edb5f34f4f63e519234e2258b8d15",
         intel: "54d25ca446c19ea6c599de5066faeae367d711ef91df2c952f263a2a81523b3e"

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
