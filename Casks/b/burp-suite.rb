cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.9.5"
  sha256 arm:   "53d40c3afe95af3a79a3d66e172f53cd28fe561a94ce8eee263d4c378d85ee49",
         intel: "3b70912860232d49fbb0ef3ac2ba7f87de326ba499df772b2a8a03dba7626d3f"

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
              item["releaseChannels"]&.include?("Stable") &&
              item["categories"]&.include?("Community") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
