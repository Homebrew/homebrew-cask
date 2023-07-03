cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.6.2"
  sha256 arm:   "cd7a0cb827ea8db4599ef341600fee89fe652e7dc86d6af4bfedf06b20932916",
         intel: "1b421e36985e69b1261b1a70b3ae3641b7ef4e610f188725043f01e2fd826260"

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
