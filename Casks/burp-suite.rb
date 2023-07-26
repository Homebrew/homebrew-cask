cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.7.1"
  sha256 arm:   "97d53381a0cdad9f5953bd944dd64f8a96eb4d680281bff08fc5aa2811a01173",
         intel: "dc345044033c1cba901853a23387a82c86d30accf18f459fbf5df962c9ffdc8e"

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
