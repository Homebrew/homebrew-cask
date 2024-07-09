cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.5.5"
  sha256 arm:   "8d43424288711338c35ce06b5cc6923a5fcb3147f1016da2170c31b566f3bf59",
         intel: "6b26f6731003af1a9c8978c73f87d7d561ada02d1e55ad18f0c1e6d0cdb3158e"

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
