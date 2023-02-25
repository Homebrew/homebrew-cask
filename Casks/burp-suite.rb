cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.1.2"
  sha256 arm:   "6278520c13dfad0b9866b1855c6bab7977e324ccd25cb0a4b25ebc9f2d81286b",
         intel: "88d1c3d515cbad14ca64b2ce5a8904edd1049fa78e9e14c1d94b8dd1f4f963d2"

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
