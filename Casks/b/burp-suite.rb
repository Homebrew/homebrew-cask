cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.8.3"
  sha256 arm:   "3233db2fecabc68543972eada39edd65395d340d051b8fbbf9fc76a94dce2237",
         intel: "4a2d6b29fb837660f7d63b40adceb73c606d5ad79ee7f5a7c77254fe55824259"

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
