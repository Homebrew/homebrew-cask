cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.10.3.4"
  sha256 arm:   "ea3a3d92bb8f7a912aa613fb211d1baa7530d0cdcaff5a2e790de98f3f140e33",
         intel: "6778933e3accde7c491085397bcd784bf34e7952cdf1a13203108ac8067703d5"

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Professional") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end.compact
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
