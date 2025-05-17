cask "burp-suite-professional@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.5"
  sha256 arm:   "cb65c8baa41357b6bbd91f486be4d5d72b7cf3acfbaf4317cc9a3b6b4a6910e9",
         intel: "866be64ca284fdf3dfd84fb56e1cc09153c2a49b69defd431a6504deae26ebb8"

  url "https://portswigger-cdn.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json.dig("ResultSet", "Results")
      next if all_versions.blank?

      all_versions.filter_map do |item|
        item["version"] if
              item["releaseChannels"]&.include?("Early Adopter") &&
              item["categories"]&.include?("Professional") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite-professional"
  depends_on macos: ">= :catalina"

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
