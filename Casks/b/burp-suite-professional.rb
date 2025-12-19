cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.11.6"
  sha256 arm:   "5789469c31d5e7d425f18b60142cc5136b15559e637287f9bd61796a413fc95d",
         intel: "4e50ea1df071df5cffb2aa4077328d9f7cef24dcb834deff22eea8a2ee5a611c"

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

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
