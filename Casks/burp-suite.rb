cask "burp-suite" do
  arch = Hardware::CPU.intel? ? "MacOsx" : "MacOsArm64"

  version "2022.5.2"

  if Hardware::CPU.intel?
    sha256 "ed57b3d5ca2744ebb8b531d42c7411e5e57b47121a625a6b937ff5870ead9e62"
  else
    sha256 "a027979db0e510924d273d211cc977e10d2672fcb3d76e01acb5bfebbf99be9d"
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
