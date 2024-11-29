cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.10.3"
  sha256 arm:   "1932d8fe08b9da8e790feec5914d2cc9759c0050926cb008100d596ca08887da",
         intel: "e8fd5b55ac9b55af44a0b9c9c876d00de0f82be883bc719a86348028a8d8f611"

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
