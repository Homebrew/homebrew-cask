cask "burp-suite-professional" do
  arch = Hardware::CPU.intel? ? "MacOsx" : "MacOsArm64"

  version "2022.3.9"

  if Hardware::CPU.intel?
    sha256 "fb30ae97237d465ecf12b78cf71e0bdce6176028adda38d1e234996f49a5839e"
  else
    sha256 "e143d54ee24ee1dde8f6a2c6758f88f2e137ef5a40184e3d7b0046481e116a0f"
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
