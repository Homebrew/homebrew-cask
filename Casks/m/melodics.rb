cask "melodics" do
  version "4.1.1625,4631EFA4-2056-4FDF-AA81-BFB72E60BF86"
  sha256 "e145de2ec47973b95ab0985d890a8de7b2394bb785719ddd620f9815c29cb0cc"

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
  depends_on macos: ">= :catalina"

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
