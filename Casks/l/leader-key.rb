cask "leader-key" do
  version "1.8.0,77"
  sha256 "8b9c7a3546977a6643871cd03716273e227176e7d82e8d7825786c33e5b06e2f"

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
