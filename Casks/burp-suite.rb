cask "burp-suite" do
  arch = Hardware::CPU.intel? ? "MacOsx" : "MacOsArm64"

  version "2022.6.1"

  if Hardware::CPU.intel?
    sha256 "16cb639efd432595c0f3e9a7b0dc9b8a952e46490e9fa12337624ab985a89297"
  else
    sha256 "6a05276cd46e67dc5e0ddb9305f7ab1fae2cce3df11a19c2305948511e139ec1"
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
