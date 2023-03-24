cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.2.4"
  sha256 arm:   "b71ff7848ba373e982e700a27845d9896ea6982437319546578d028ae5bc5672",
         intel: "1bd0476f7f286906d9da2a67bebef43ebed3c7116c47878469949219bc855c6b"

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
