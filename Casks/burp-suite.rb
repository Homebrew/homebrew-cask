cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.8.2"

  on_intel do
    sha256 "21311ae319d7e235fa5cbfa53eb9e4bb2a9c9056cd849ae9916f20d2d9c6c9e5"
  end
  on_arm do
    sha256 "f1397ed4b7130f076ce05a744ca9e5f59fe7c030b8e2e490090a4b039cd3b0ff"
  end

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
