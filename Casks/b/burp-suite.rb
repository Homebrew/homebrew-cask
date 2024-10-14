cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.8.5"
  sha256 arm:   "074189c94259881dc48dd6bfce51e79c3c35ff2d63897a56a28662aa600fa641",
         intel: "7163b2d6f4cf44c52cf8cdb223fc882016c58b806acd9ff6cae0dadf53c2bcf7"

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
