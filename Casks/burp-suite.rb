cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.12.6"
  sha256 arm:   "d87a7a2e74e70bd891b90bd61663bc7bbdf0acb8edb40a6b0e8256ee8802ad57",
         intel: "6513c9588fb1c672f5a98d28a5f2278ae8ee988894234907d4013374d3205d5c"

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
