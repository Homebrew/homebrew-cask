cask "burp-suite-professional" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.1.3"
  sha256 arm:   "0fd6e9395af290990dbfe3d4f36b28c023c4abf6a2af2415f7654818af3ef308",
         intel: "4d1d56e781f6d7b2758c2a1121839ebba33c69dae6d83675425dfb218f404dc6"

  url "https://portswigger.net/burp/releases/download?product=pro&version=#{version}&type=#{arch}"
  name "Burp Suite Professional"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/pro"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
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
