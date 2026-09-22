cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.9"
  sha256 arm:   "4d36f592fddf6e0cd3437807b57f15d8e35712414a16cd76c8f8843c972b152f",
         intel: "e871c83a103438f4f90dc488940ce8d1af0af6f96a3138b22fb3537747cbb43f"

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
