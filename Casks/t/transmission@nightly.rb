cask "transmission@nightly" do
  version "9688,f988da6aa1"
  sha256 "257ec486c7faa08015eb0d267b2051dfaa04d2c616d5fa067fb40047a1fc2f49"

  url "https://build.transmissionbt.com/job/trunk-mac/#{version.csv.first}/artifact/release/Transmission-#{version.csv.second}.dmg"
  name "Transmission"
  desc "Open-source BitTorrent client"
  homepage "https://transmissionbt.com/"

  livecheck do
    url "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/"
    regex(/>\s*\#(\d+)\s*<.+?href=.*?Transmission[._-](\h+)\.dmg/im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "transmission"
  depends_on macos: ">= :big_sur"

  app "Transmission.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*",
    "~/Library/Application Support/Transmission",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*",
    "~/Library/Caches/org.m0k.transmission",
    "~/Library/Cookies/org.m0k.transmission.binarycookies",
    "~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist",
    "~/Library/Preferences/org.m0k.transmission.plist",
    "~/Library/Saved Application State/org.m0k.transmission.savedState",
  ]
end
