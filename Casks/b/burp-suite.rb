cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.10.2.4"
  sha256 arm:   "95f14bb8a70e01d20c624cb14f0f6f11c03d69d93d1ef2631f6df1cd8f400586",
         intel: "df3c38fe52090943a50291d12fb79583550ffc370b0b5c8d26a29649e06b24eb"

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
