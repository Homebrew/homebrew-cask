cask "burp-suite" do
  arch arm: "MacOsArm64", intel: "MacOsx"

  version "2022.8.1"

  on_intel do
    sha256 "0bf5cccfdd30f6abac2a67f2fd24491a5b9b785bf936f864c00aa54d026f03be"
  end
  on_arm do
    sha256 "ea26260281254499187d63cb177e80b0c97adb87c99d9105947554291731e45e"
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
