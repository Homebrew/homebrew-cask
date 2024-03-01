cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.1.1.4"
  sha256 arm:   "1f96a5b21b8e0cf946ace9be27da2cdaa7ebc6b4a59209a424d5af0e50b739a3",
         intel: "d928193466ef7320385d8467b6dcf00f1b32919a48c181b379f4b635047e79dd"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=#{arch}"
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
