cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.11.2"
  sha256 arm:   "bace56b5c977eec20c413bf0c535c4b6b2162bdd508d90077ff9d23d48cc183f",
         intel: "fdc278d460810bed424725889dda3b3bf8780390162fe44f4fb408b4ec546aa3"

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
