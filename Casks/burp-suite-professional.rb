cask "burp-suite-professional" do
  version "2021.12.1"
  sha256 "f555221aeea3ed6ce2b2377cc997b352c4f4614fe897baeb1c9518a6bdd641a9"

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=MacOsx"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :page_match do |page|
      all_versions = JSON.parse(page)["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Professional") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == "MacOsx"
              end
      end.compact
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
