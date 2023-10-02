cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.10.1.2"
  sha256 arm:   "85d783ce9c7bc4f4dd410aa2ee83cfa9cb98bd275a6f7c93bd39faf5945a68fe",
         intel: "5e04467a72e0cd3fd50ce0a349f031957746a2922de5c494e20e4a59e4432a32"

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
