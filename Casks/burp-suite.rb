cask "burp-suite" do
  version "2021.10.1"
  sha256 "f16b06acb3682c1918d4e528ac276733fd8fa61f052e5db22f44d5440ec5d3a1"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=MacOsx"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :page_match do |page|
      all_versions = JSON.parse(page)["ResultSet"]["Results"]
      next if all_versions.blank?

      stable_versions = all_versions.filter do |v|
        v["releaseChannels"].include?("Stable") && v["categories"].include?("Community")
      end
      next if stable_versions.blank?

      mac_versions = stable_versions.filter { |v| v["builds"].any? { |b| b["ProductPlatform"] == "MacOsx" } }
      next if mac_versions.blank?

      mac_versions.first["version"]
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
