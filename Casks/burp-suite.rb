cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.4.5"
  sha256 arm:   "12e8e06a6c330ff93f6d32edf4eac673fe5165faba374122d9a1a76834d083ea",
         intel: "bcca66a08c484914c0d92c428778bdbed7b7ed7de12c0a7a07d8c1f9d3b921f3"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=#{arch}"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Community") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end.compact
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
