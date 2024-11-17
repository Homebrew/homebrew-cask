cask "isyncr" do
  on_mojave :or_older do
    version "5.14.12"
    sha256 "b4f0ddd19ba49924e00226ff09d543928e13a4e8ec10d2b9cb53e227aeaf2953"
  end
  on_catalina :or_newer do
    version "6.1.0"
    sha256 "29d8e06de375a41efcdd378dec9f7f08a92212325270fb462aae5593a1217fbc"
  end

  url "https://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  name "iSyncr Desktop"
  desc "Syncs iTunes to Android over a USB or WiFi connection"
  homepage "https://www.jrtstudio.com/iSyncr-iTunes-for-Android"

  # The download page is rendered using JavaScript with the download links
  # obtained from https://www.jrtstudio.com/files/SlashiSyncr<number>.js
  # Since the <number> is not fixed in the filename, the current JavaScript
  # file needs to be extracted from the download page.
  livecheck do
    url "https://www.jrtstudio.com/iSyncr-Desktop-Download"
    regex(/iSyncr\s*Desktop\s*v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :page_match do |page, regex|
      js_file = page[%r{src=["']?/(files/SlashiSyncr\d+\.js)\??["' >]}i, 1]
      next if js_file.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://www.jrtstudio.com/#{js_file}")
      version_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall quit:    "com.JRTStudio.iSyncrWiFi",
            pkgutil: "com.jrtstudio.iSyncrDesktop"

  zap trash: [
    "~/Library/Caches/com.JRTStudio.iSyncrWiFi",
    "~/Library/HTTPStorages/com.JRTStudio.iSyncrWiFi",
    "~/Library/Preferences/com.JRTStudio.iSyncrWiFi.plist",
  ]

  caveats do
    requires_rosetta
  end
end
