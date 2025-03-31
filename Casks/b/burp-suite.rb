cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.2.3"
  sha256 arm:   "fb10b8fc1a831101de86771f30a5dae56b1f5cbd0fbd598791d7c059c38a8c73",
         intel: "8152241a216192f2ebdb61599d4c08e82d05d887c4881c73462a64ca084a9e63"

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
