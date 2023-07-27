cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.7.2"
  sha256 arm:   "27e782bf1dc0c49c1acdfafb3287971cf34db0571b651d532465e687c3365132",
         intel: "32f8eb5359aa07a15d30bc64836fc4f7e70c8ceed62f227b5b933893d1ab8d58"

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
