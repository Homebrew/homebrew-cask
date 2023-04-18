cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.3.4"
  sha256 arm:   "09e0a6347831d8f15882e2a780bb63fca6543196b9f4cececf51efc1c304a271",
         intel: "bdc97ef6dca8e3174c442a105e3410d0f66659f06a0ff47012461e5efe046492"

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
