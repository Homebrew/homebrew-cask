cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.8.4"
  sha256 arm:   "f931a0cfc640bb10a87f92954cfe6e934bd7f0e976597327d5d7560ffdebc8b5",
         intel: "a2f6d6cfd90a6e6ca1f095cc05d3386956e35442b174f4ae6475f37d79620d01"

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
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Community") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
