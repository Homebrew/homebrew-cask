cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.3.2"
  sha256 arm:   "09c9ae19c331d89a064109e2b203d59ea8c6639a4761718c28d0577f9417ca4a",
         intel: "ea3e1590d98ef0b2dd8a43205a1a1366cbb057c469b8f1fa4e907ae524c6c121"

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
