cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2026.7.3"
  sha256 arm:   "fa2702f50dd6f68faaa2e288cf2b5334c193c177925c8a96ffe6d7f8c958fac6",
         intel: "9e32c719780fcd9f9f72423d2bedcfd622e16fe4575799411115a09172336677"

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

  zap trash: "~/.BurpSuite"
end
