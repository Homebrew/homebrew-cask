cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.4.3"
  sha256 arm:   "76988af0d31b8a3457f38460273201b83b94353fc486a05364d461a1a85279c6",
         intel: "d0bd39f69a1f4c502f49617b942a0fcd3be987cdd2e757182d712d21867f73b6"

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
