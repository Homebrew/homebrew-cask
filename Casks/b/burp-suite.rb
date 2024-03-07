cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.1.1.5"
  sha256 arm:   "81e3764d10bbf34097b1486fee2dd2445cadeae7aec2df65a70dcc11b7966637",
         intel: "8389e244dc4a23df81a210848527e000b766f17055bfcc934893775a186be5be"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=#{arch}"
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
