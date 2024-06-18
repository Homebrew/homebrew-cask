cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2024.5.3"
  sha256 arm:   "5bcfd1c3a3a2fb95e206c76348878ab4ef1d433185e9de8f8625d801513c83fd",
         intel: "4e03394aa18e5fe2d6db054a0900950370c9ef5796954cce579cc878f9a1b604"

  url "https://portswigger-cdn.net/burp/releases/download?product=community&version=#{version}&type=#{arch}",
      verified: "portswigger-cdn.net/burp/releases/"
  name "Burp Suite Community Edition"
  desc "Web security testing toolkit"
  homepage "https://portswigger.net/burp/"

  livecheck do
    url "https://portswigger.net/burp/releases/data"
    strategy :json do |json|
      all_versions = json["ResultSet"]["Results"]
      next if all_versions.blank?

      all_versions.filter_map do |item|
        item["version"] if
              item["releaseChannels"].include?("Stable") &&
              item["categories"].include?("Community") &&
              item["builds"].any? do |build|
                build["ProductPlatform"] == arch.to_s
              end
      end
    end
  end

  app "Burp Suite Community Edition.app"

  zap trash: "~/.BurpSuite"
end
