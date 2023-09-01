cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.9.4"
  sha256 arm:   "c65f3ca41d58f2b44c17a4ff8e6b9ea7fc084adb5efe22cb593741557929e9ff",
         intel: "f4b888358c8de861a66d7f2fab11c9a19902758c1c497ec6a07fc0f0ac54e62e"

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
