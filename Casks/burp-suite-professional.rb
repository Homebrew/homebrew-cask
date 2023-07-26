cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.7.1"
  sha256 arm:   "803b96b201e8ddbcc914ae6ee3bc48ba8831cee14f5e57626083dc61942da6ee",
         intel: "6b49b641f508150b5c846b93b95e03245d06f6838a659cd7f479ac91e58a4023"

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Professional") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end.compact
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
