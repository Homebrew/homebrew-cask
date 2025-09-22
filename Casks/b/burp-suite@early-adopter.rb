cask "burp-suite@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.9.2"
  sha256 arm:   "f5230ccffa705812dfdbfe9f8e426f1078ff4210af38ce6736909254eeb0f593",
         intel: "1368280ebf4e9dfe7f05cdeb205732a9705f26244bc860880dee20adbd43b40d"

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
              item["releaseChannels"]&.include?("Early Adopter") &&
              item["categories"]&.include?("Community") &&
              item["builds"]&.any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  conflicts_with cask: "burp-suite"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
