cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.11.1.3"
  sha256 arm:   "2ca68b2f70bd61fb68c3b0c9a7cba1314a20a832a9cedfecc91bfb9ce4e2f50d",
         intel: "c171da96a32e17bc28233c4a8ee724d273f4f1eb2f8219788e065643f20d4983"

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
