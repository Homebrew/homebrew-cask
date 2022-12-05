cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.11.4"
  sha256 arm:   "c237c87184958c86d7fe430540819fcedc180f007b3a73d0683ed0f1f25c9144",
         intel: "d20b70bb1450a2d45f9df2b445917a80148e8434340414318cc181157fff8ff4"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=#{arch}"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :page_match do |page|
      all_versions = JSON.parse(page)["ResultSet"]["Results"]
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
