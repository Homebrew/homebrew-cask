cask "melodics" do
  version "3.0.9574,E4616021-2DA1-4192-9C68-5FB06867FE57"
  sha256 "756823be8786df5443f84900bc98c167ead334f6e04c377b3133feb253fc269b"

  url "https://web-cdn.melodics.com/download/#{version.csv.second}.zip"
  name "Melodics"
  desc "Helps you learn to play your instrument"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv2.xml"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/(\h+(?:-\h+)+)\.zip}i, 1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Melodics.app"

  zap trash: [
    "~/Library/Application Support/Melodics",
    "~/Library/Caches/Melodics",
    "~/Library/Preferences/com.melodics.Melodics.plist",
    "~/Library/Preferences/com.melodics.Melodics.updates.plist",
    "~/Library/Saved Application State/com.melodics.melodics.savedState",
  ]
end
