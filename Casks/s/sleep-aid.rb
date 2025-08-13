cask "sleep-aid" do
  version "1.5"
  sha256 "3169a049a5571af432dcf41b8c1e678f8b06d37c1d3e0e937d5a6e4061c25f56"

  url "https://ohanaware.com/sleepaid/Sleep_Aid.dmg"
  name "Sleep Aid"
  desc "Monitor computer's sleeping habits"
  homepage "https://ohanaware.com/sleepaid/"

  livecheck do
    url "https://ohanaware.com/sleepaid/versionHistory.html"
    strategy :page_match do |page|
      match = page.scan(/Version (\d+(?:\.\d+)*),/i)
      match.map(&:first).max_by { |v| Version.new(v) }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Sleep Aid.app"

  uninstall quit: [
    "com.ohanaware.sleepAid-Help",
    "com.ohanaware.sleepAidRG2",
  ]

  zap trash: [
    "~/Library/Application Support/com.ohanaware.sleepAidRG2",
    "~/Library/Caches/com.ohanaware.sleepAidRG2",
    "~/Library/HTTPStorages/com.ohanaware.sleepAidRG2",
    "~/Library/Preferences/com.ohanaware.sleepAidRG2.plist",
    "~/Library/WebKit/com.ohanaware.sleepAidRG2",
  ]
end
