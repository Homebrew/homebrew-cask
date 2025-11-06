cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.10.3"
  sha256 arm:   "02d9a0128afafddcfddf5007f90e56486d2e6be50f555277ba38088d6abf372d",
         intel: "37bd09e9c42a738afce0f41f86844757f9bb5bedea4dd8e51a0cad7f7b8f0b81"

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

  conflicts_with cask: "burp-suite@early-adopter"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
