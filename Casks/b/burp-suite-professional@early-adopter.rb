cask "burp-suite-professional@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.10"
  sha256 arm:   "7d11d9f07253837fc70e0f8464328e04d60b2811fee6c78d02a73d8901583990",
         intel: "109af96ee519d087a3439f17cdbc6e40f04ffeec9a396a926ab936bcbe143940"

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

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
