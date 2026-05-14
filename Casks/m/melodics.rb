cask "melodics" do
  version "5.0.441,28F42CEE-275F-4178-9390-E026F55CC6F4"
  sha256 "356873e9b3b735225f3b37c7dbf4629d0f07a3779d7912120017bbb83e5ebafa"

  url "https://web-cdn.melodics.com/download/#{version.csv.second}.zip"
  name "Melodics"
  desc "Helps you learn to play your instrument"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv2.xml"
    regex(%r{/(\h+(?:-\h+)+)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Melodics.app"

  zap trash: [
    "~/Library/Application Support/Melodics",
    "~/Library/Caches/com.melodics.melodics",
    "~/Library/Caches/Melodics",
    "~/Library/HTTPStorages/com.melodics.melodics",
    "~/Library/Preferences/com.melodics.Melodics.plist",
    "~/Library/Preferences/com.melodics.Melodics.updates.plist",
    "~/Library/Saved Application State/com.melodics.melodics.savedState",
    "~/Library/WebKit/com.melodics.melodics",
  ]
end
