cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.12.5"
  sha256 arm:   "40fa861491019eeaf64da14a4a4261cf5a06115f4a69c46dd9ae2cc256243be8",
         intel: "8a29fefa00190f86efc22f4660aceb7d116b5e3b3d2b80a113320c7d526caff7"

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
