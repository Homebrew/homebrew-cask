cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.6.6"
  sha256 arm:   "deeec10b686afa70d3e10d91f6e0c789732eb76d220e807ff6ed5f82d58e0faa",
         intel: "6adc979152abddccbf980043ba64d308da74f4363eddd4e5d1b3e54b7f06c24a"

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
