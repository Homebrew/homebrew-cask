cask "melodics" do
  version "4.0.734,358A623B-7B63-4EEC-BCE8-A39A88E23524"
  sha256 "e7f2b4ac5ce63fde099b993628bb263c160f0a742fe3dd5b1eaa668fb94f4755"

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

  depends_on macos: ">= :mojave"

  app "Melodics.app"

  zap trash: [
    "~/Library/Application Support/Melodics",
    "~/Library/Caches/Melodics",
    "~/Library/Preferences/com.melodics.Melodics.plist",
    "~/Library/Preferences/com.melodics.Melodics.updates.plist",
    "~/Library/Saved Application State/com.melodics.melodics.savedState",
  ]
end
