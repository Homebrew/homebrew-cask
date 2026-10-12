cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.10"
  sha256 arm:   "dc2fe688e0f37dfe153859b991e3aceb2e83c1e82bb3db861e1e5135b8d097fa",
         intel: "6c72b24d74d648f871a7ed654905b7d3bb572c039eb6002dd0673ee1e1247866"

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
