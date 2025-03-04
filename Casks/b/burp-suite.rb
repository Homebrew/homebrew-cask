cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.1.3"
  sha256 arm:   "5825594b1ae9757a364e686554cf8fe44c913514152a7321e1bc86d9cbc87eab",
         intel: "a5604bdf705f369ccdad4a48a3e691c7f18f1960d24b93dda0a73f4559bf7fbc"

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
