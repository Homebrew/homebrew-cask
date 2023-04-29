cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.3.5"
  sha256 arm:   "bbf820de0773fc72aedbb3d027331bedee17b6935e6c37dfaf48edc30d6a5145",
         intel: "103ec3a1e64a3d67fdcdf44ea77d0df2bdba3964547a347fc2f9155a7e3aab18"

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
