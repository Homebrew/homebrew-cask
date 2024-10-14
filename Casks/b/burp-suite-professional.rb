cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.8.5"
  sha256 arm:   "7ab6c16c3f171e567b8336edaaba3eba07993a94f0d2c51f004812d1d637112b",
         intel: "4922cad7ec76e22bca9316d48b3b6b37e9e029019efec28bdc74acd00825fefb"

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
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Professional") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
