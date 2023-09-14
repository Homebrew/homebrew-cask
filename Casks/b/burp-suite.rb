cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.10.1.1"
  sha256 arm:   "1ab25ca05a868f5cabd5113b1514bebe1b557296d004da4d6da3875b7594e2fc",
         intel: "3d92b614301ac5818b157fca98309941f4e2a821eb64968c99f3d74fa6c10246"

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
