cask "burp-suite-professional@early-adopter" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.12.1"
  sha256 arm:   "542414f319506bafd150fa91942060964b26b2402327212e11af1810ecb6cec7",
         intel: "cca2dec5530f523b71e83da48887aa66561f61fee7114ffac3a25633a17aa815"

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
