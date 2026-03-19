cask "melodics" do
  version "5.0.133,A0BA18C9-C85C-4DA2-8F76-8D94AE4BCBC9"
  sha256 "edd32d8256db61b3d453db834624319b0bd2aaa4451afc8df93f2d7107d8bd8d"

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
  depends_on macos: ">= :monterey"

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
