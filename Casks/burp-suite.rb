cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.5.4"
  sha256 arm:   "3de53acfc8b84576913d4ba6af79cda8713c331aa86ae2722e645d2d6306a600",
         intel: "9a79730999a8ab2c9b44028ddfa909d7e698a3d0fe65d90495b02cb384440831"

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
