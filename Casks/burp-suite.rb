cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2023.3.3"
  sha256 arm:   "6345a5f6a57eec725de8efc31daf4229b9ee13f724e3c7711bd3654dd1e5ee20",
         intel: "ce6eb4ca5a05d73709a29012fdf6e240642af78e6ecd21dfcd65bf717dd57624"

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
