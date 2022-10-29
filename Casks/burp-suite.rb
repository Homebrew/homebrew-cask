cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.9.5"
  sha256 arm:   "93eeffd417ed4d2efca28192792dc21235f37778d321f76fddd7e3aceffb2eea",
         intel: "1dfab181f09357dcc7d34af21fa045c8e90d60e733eb571f63c7c909cd683772"

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
