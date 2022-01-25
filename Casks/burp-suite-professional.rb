cask "burp-suite-professional" do
  arch = Hardware::CPU.intel? ? "MacOsx" : "MacOsArm64"

  version "2021.12.1"

  if Hardware::CPU.intel?
    sha256 "f555221aeea3ed6ce2b2377cc997b352c4f4614fe897baeb1c9518a6bdd641a9"
  else
    sha256 "fe96d42f185372ca9e7ff1881705dce91a5b59a33de2e0ff7481734b9d42d4e7"
  end

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}"
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
                build["ProductPlatform"] == arch.to_s
              end
      end.compact
    end
  end

  app "Burp Suite Professional.app"

  zap trash: "~/.BurpSuite"
end
