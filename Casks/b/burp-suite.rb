cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.9.2"
  sha256 arm:   "7b9ef920c5e021e0f55fb4b37c8b304747722213a192a0b307e64d40732896c8",
         intel: "12896f2707f39e7efbde172fda762ae811b4eb5ac6b320bd2acae2338fd5ae18"

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
