cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.5.3"
  sha256 arm:   "bf40e6cb818ffd3f74c42b43e45a130425a00854e253e729f85726a87079450d",
         intel: "3ad7533d47673373eeef26280b78f719b841dfe68192277f8b1010073a60ec24"

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
