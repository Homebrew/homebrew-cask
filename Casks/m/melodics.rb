cask "melodics" do
  version "4.0.700,FB9BFF06-6408-4708-9E7B-9D8671F6A2BB"
  sha256 "6babc11d96ada46166a918d952377247c6499b5cfa54bcfff111ec7be5c65a5b"

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
