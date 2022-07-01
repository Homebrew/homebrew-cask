cask "burp-suite-professional" do
  arch = Hardware::CPU.intel? ? "MacOsx" : "MacOsArm64"

  version "2022.6.1"

  if Hardware::CPU.intel?
    sha256 "421ec043ce3282ca31d0c269bd1a7c1c0744ff6dcd7f0f8de8973b187cda388d"
  else
    sha256 "46bdd1a3c93e0ada83d5cdea2caa4bb15cc58aa05320de681fe3368bf33a3095"
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
