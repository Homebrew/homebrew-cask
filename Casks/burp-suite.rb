cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.11.2"
  sha256 arm:   "ea18adfa0ce90e6c432f7961c45954e324b1be883d713dc55ea171e51c290ef1",
         intel: "efe5b8aae4565107f0a3d5c1746fea1cb33cec963426975dde39416b96f5ea12"

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
