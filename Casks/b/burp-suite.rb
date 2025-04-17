cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.3.2"
  sha256 arm:   "8ef9d65a7cfb1873e4347aee0ca2f81e6e729d34d402d23e05d5ecbf310b3817",
         intel: "9fed89add5bd93cf1bc56cc04acbbf21993896a3aab26f4274f17a6f588266eb"

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
