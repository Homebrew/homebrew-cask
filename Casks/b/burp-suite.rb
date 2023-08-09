cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.9"
  sha256 arm:   "d53d523f1e81d4ca19adf5272f904864554a315222adcf1dda962081cd3d8751",
         intel: "e2fd3f4b8a4ccb6d4f4685f26011a95b1bd2e9fda0b014a0094f4638698b5095"

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
