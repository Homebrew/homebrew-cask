cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.5.6"
  sha256 arm:   "f9cf261b42a8c6843abb8f0b83eb4c1350a6ea27162c19911d76ad8e29e0ac66",
         intel: "4734fb120d094b45f2f262f88270b532ad42d5ae71f69ad2ee22b71e92b0325b"

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
              item["releaseChannels"]&.include?("Stable") &&
              item["categories"]&.include?("Professional") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite-professional@early-adopter"
  depends_on macos: ">= :catalina"

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
