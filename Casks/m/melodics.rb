cask "melodics" do
  version "5.0.1725,34196315-8330-4378-8B82-50168311D4A1"
  sha256 "d73296b93a0016104a20fd3aec7a2f80c29bd354a9357ec59aec15aa2f51f2c4"

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

  uninstall quit: "com.melodics.melodics"

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
