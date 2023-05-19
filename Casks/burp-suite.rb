cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.4.4"
  sha256 arm:   "e12a187f5f01296d6e8d5b26329b9f1771f80799e52e9db3a4b50c10100b5296",
         intel: "410f4deb632accac35d481789ebc89111dd554097edd25868d0065481242672f"

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
