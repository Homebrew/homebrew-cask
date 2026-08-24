cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.8"
  sha256 arm:   "638ff9d9c3026838798f5659904e3e9cba00ee0b26f3d616f93b1967f275d2ce",
         intel: "6c6f0f8450179d1c3e99538fcdad7d1d764a5d7e290c8c48b9070018e08c9411"

  url "https://portswigger-cdn.net/burp/releases/download?product=desktop&version=#{version}&type=#{arch}",
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
