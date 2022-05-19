cask "burp-suite" do
  arch = Hardware::CPU.intel? ? "MacOsx" : "MacOsArm64"

  version "2022.3.7"

  if Hardware::CPU.intel?
    sha256 "cdea1eaec6f93a3e64099dea511bcbbaddaba8f33b83dd2a7d81c77cb084908f"
  else
    sha256 "66956ae2f41e8ae1372690c8077446677bd64f743b2a57f6071b8afd11cce595"
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
