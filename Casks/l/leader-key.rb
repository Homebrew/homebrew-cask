cask "leader-key" do
  version "1.6.0,57"
  sha256 "79aae74c790166dd806cac27f94fd6aacdbee889622084e13f326f65ea19035f"

  url "https://leader-key-updates.s3.amazonaws.com/Leader%20Key.b#{version.csv.second}.zip",
      verified: "leader-key-updates.s3.amazonaws.com/"
  name "Leader Key"
  desc "Application launcher"
  homepage "https://github.com/mikker/LeaderKey.app"

  livecheck do
    url "https://leader-key-updates.s3.amazonaws.com/appcast.xml"
    regex(%r{/Leader%20Key[._-]b(\d+(?:\.\d+)*)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Leader Key.app"

  zap trash: "~/Library/Application Support/Leader Key"
end
