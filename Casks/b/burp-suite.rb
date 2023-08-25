cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.9.3"
  sha256 arm:   "ef21d72149fb6552c2dea8135daa6e2938783dddcf7e7f4c1dc4f72b7c7843ff",
         intel: "a790df76aa73398b35f6abc49e7b42ae9aff43cb0d64124b707a8b07bdf36821"

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
