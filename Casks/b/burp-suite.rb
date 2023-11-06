cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.10.2.5"
  sha256 arm:   "d52a68e59b3ff79bbcac55437856e418880a5b5153376623d946e89239303223",
         intel: "32cdbd472aa0bdbeca6430de5c1d8a8662cb214c017f317fc21bcbfe39850605"

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
