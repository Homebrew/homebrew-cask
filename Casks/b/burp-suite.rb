cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.12.1.4"
  sha256 arm:   "5461568f1570b457ac35f7702d85d775d66c6f04afe7a153f883e405a7e4a280",
         intel: "5d7b2fccb80c2948af778b45cc74c4442510286279390ad64efed3def9685fe7"

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
