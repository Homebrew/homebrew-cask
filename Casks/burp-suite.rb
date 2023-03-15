cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.2.3"
  sha256 arm:   "5864ea06af17965c9ccf0bc1712cc5db6bf890b801d458432d6ffa0f9cbafbc8",
         intel: "d5e0c6f025be0e1064d3224f69d773a2e6b14b593f711851e721f1c4f297b5d1"

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
