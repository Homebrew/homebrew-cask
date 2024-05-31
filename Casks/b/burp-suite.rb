cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.4.5"
  sha256 arm:   "dded8d25dc938a81913f5bb0efdf0090e0210af0d008738c33cef0743b05db67",
         intel: "6d85354fbf6e4eb2766c6590a7771cf665df4a688e71d520784480c55d5ed1f0"

  url "https://portswigger-cdn.net/burp/releases/download?product=community&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
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
