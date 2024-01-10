cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.11.1.4"
  sha256 arm:   "4685af199fd6b6704a5755fe625f14d828e5b32abf8151d90bb9c05cd236ada0",
         intel: "e8acd0e5060f0e0ff13b631673e0fdf000bc229d9a1a006bc4fefefd4c15e8ff"

  url "https://portswigger.net/burp/releases/download?product=community&version=#{version}&type=#{arch}"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
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
