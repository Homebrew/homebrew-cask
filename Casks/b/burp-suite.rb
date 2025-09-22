cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2025.8.5"
  sha256 arm:   "563dde2cfd60cdef94215ecf0436981ee4d5987976ddfea40f4f72bc6a61fd2c",
         intel: "4d1063b999966116136ae7f3e175116cd309c206bcd32c6d3b8d8a3659bf9890"

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

  conflicts_with cask: "burp-suite@early-adopter"

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
