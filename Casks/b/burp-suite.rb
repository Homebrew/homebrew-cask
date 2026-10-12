cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.9.2"
  sha256 arm:   "a3f201953bda2173c03ad27323b89f7b07d34cbfa3062b78605df2c29a653fc8",
         intel: "fad033eb8e60b5707cc25b4642331da14433fcc54ea6491499ffd21982d8f950"

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
              item["releaseChannels"]&.include?("Stable") &&
              item["categories"]&.include?("Desktop") &&
              item["builds"]&.any? do |build|
                build["BuildCategoryId"] == "desktop" &&
                build["BuildCategoryPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite@early-adopter"
  depends_on :macos

  app "Burp Suite.app"

  uninstall quit: "com.install4j.6592-1155-2163-3973.70"

  zap trash: [
    "~/.BurpSuite",
    "~/Library/Preferences/com.install4j.6592-1155-2163-3973.70.plist",
  ]
end
