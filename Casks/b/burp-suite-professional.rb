cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.3.2"
  sha256 arm:   "56143e92a1cb1c9c91512d88615b9152c02b058b25b39bc9d5a2334e49d2d4b4",
         intel: "0f7afd35c964478c3a7f02825d680badbc3f4b35c103bcc82e2fc3fb4047a988"

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

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
