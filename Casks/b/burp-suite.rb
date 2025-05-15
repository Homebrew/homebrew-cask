cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.4.2"
  sha256 arm:   "d270595ddaf1b3c7fa61d0d75cdfabc29d0c9e377d45ff29e45f41ea76a360a4",
         intel: "1da7e78427bea1c167a73a09ac974c8c2ad2595e7a7735162c74de4907b8dbe1"

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
