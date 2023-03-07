cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.1.3"
  sha256 arm:   "dcdb72b6b7ef64328b4ab58dca96930cfb6249bdaf6d45f05f8d228cffd1332a",
         intel: "2068898e19ce5af72e03666bc049bee9349daed12150bfe27b4205930e152ecc"

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
