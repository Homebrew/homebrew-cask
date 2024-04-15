cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.2.1.5"
  sha256 arm:   "86f37a70107252b421b3525bd818ea48cf30573d99bf6f1b9ef5b5d4a2a7fae9",
         intel: "0fa1e0dbbda41324c7fbfd55b44d081282c6b952e099680dd57314271b297624"

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
