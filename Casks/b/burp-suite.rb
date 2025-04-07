cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.2.4"
  sha256 arm:   "ae7108860ac920ec8c7467dfb011f387de311c3c6c12e2904af78b61fbf64dda",
         intel: "aa1cb0aed059ec9f6f83916cdb4bd64c84e6a91d8e53542eb22eef2510ef3d4b"

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
