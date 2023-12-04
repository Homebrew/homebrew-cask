cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.10.3.7"
  sha256 arm:   "dde631e7f768566379cace0c6d4f8b2de3121b8077c94e3845fd375d6755317e",
         intel: "c8d4eb179b0067035dffd0bcedd66e6af90a340c2df6e606e7a2bcc3c7ed627a"

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
