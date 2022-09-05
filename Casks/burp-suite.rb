cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.8.4"
  sha256 arm:   "8552f3dbdd0e11947b8c37878dbadfa8c3975153f2dec2dac1c84abb0c061456",
         intel: "82a80e60827170ff32e234e14f3172d8a005de4f55f039fe91d8e3e9a781f015"

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
