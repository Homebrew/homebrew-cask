cask "genesys-cloud" do
  version "2.42.632,126"
  sha256 "0dcabf09784bcd8aac328b0630474fb0d231ba2456eff7d9f9b9e1790a6afbe4"

  url "https://app.mypurecloud.com/directory-mac/build-assets/#{version.csv.first}-#{version.csv.second}/genesys-cloud-mac-#{version.csv.first}.dmg"
  name "Genesys Cloud for macOS"
  desc "Run Genesys Cloud as a stand-alone program, keeping it separate from web browser"
  homepage "https://apps.mypurecloud.com/directory-mac/"

  livecheck do
    url :homepage
    regex(%r{/v?(\d+(?:\.\d+)+)-(\d+)/[^"' >]*?\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Genesys Cloud.app"

  zap trash: [
    "~/Library/Caches/com.inin.purecloud.directory",
    "~/Library/HTTPStorages/com.inin.purecloud.directory",
    "~/Library/Preferences/com.inin.purecloud.directory.plist",
    "~/Library/Saved Application State/com.inin.purecloud.directory.savedState",
  ]
end
