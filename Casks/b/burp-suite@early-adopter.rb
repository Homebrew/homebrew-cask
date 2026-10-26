cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.10.1"
  sha256 arm:   "77a343a0e8ac80784382f33c54ce8c0516618ad7d92a97eb6e014b57d8f2f07d",
         intel: "28dcf9d4a929b510ae65c6cf17387b0de8149f2d01ff36b8dcc0759ca305a7d3"

  url "https://portswigger-cdn.net/burp/releases/download?product=desktop&version=#{version}&type=#{arch}"
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
              item["releaseChannels"]&.include?("Early Adopter") &&
              item["categories"]&.include?("Desktop") &&
              item["builds"]&.any? do |build|
                build["BuildCategoryId"] == "desktop" &&
                build["BuildCategoryPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite"
  depends_on :macos

  app "Burp Suite.app"

  uninstall quit: "com.install4j.6592-1155-2163-3973.70"

  zap trash: "~/.BurpSuite"
end
