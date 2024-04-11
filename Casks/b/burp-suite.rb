cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.2.1.4"
  sha256 arm:   "b876e73b06a20bd14944ce651e7a66446fa242e4c29dd5b771db7180edc6e7d4",
         intel: "db289d6d96d04c2afcf23fb1da7ffb55f28ca546b5c68f00c267f09881ba4692"

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
