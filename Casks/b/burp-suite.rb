cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.6.5"
  sha256 arm:   "6fd610855975741b0d9cd730fba7910e0590cc0ea56412b534cea1e4d709bfcf",
         intel: "a51a0c106f0cd150fec7b5fbd227a9abbdddde85e7c138bf06c909b0ce018fd4"

  url "https://portswigger-cdn.net/burp/releases/download?product=community&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json.dig("ResultSet", "Results")
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
