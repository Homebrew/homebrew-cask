cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.1.1"
  sha256 arm:   "b48621e907e2c63ae1f384c17258b53f6c56c8f223a5f23bbc01bd0036f1efbb",
         intel: "cf450eaa230057e09b53d8c99dbd7c321a72febd681602d2a145aea98cdec766"

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

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
