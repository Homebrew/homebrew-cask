cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.7.2"
  sha256 arm:   "3740b9af5c08a57ee10134dc963cb14005300003cfe87a15a396bc9027f45086",
         intel: "859687de65ba89d285588323af842536b2f4647787e6e295a6657be1966fb65a"

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

  zap trash: "~/.BurpSuite"
end
