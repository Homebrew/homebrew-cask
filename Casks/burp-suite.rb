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
      all_builds = JSON.parse(page)["ResultSet"]["Reslts"]
      next if all_builds.blank?

      mac_builds = all_builds.filter { |r| r["builds"].any? { |b| b["ProductPlatform"] == "MacOsx" } }
      next if mac_builds.blank?

      mac_builds.first["version"]
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
