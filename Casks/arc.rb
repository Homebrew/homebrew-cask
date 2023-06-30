cask "arc" do
  version "0.110.1,39837"
  sha256 "cdf95365e87d5f084bb7b097dd4cb6fc9ca15d485b6d9d986b9b2e1130605bdb"

  url "https://releases.arc.net/release/Arc-#{version.csv.first}-#{version.csv.second}.zip"
  name "Arc"
  desc "Chromium based browser"
  homepage "https://arc.net/"

  livecheck do
    url "https://releases.arc.net/updates.xml"
    regex(%r{/Arc[._-]v?(\d+(?:\.\d+)+)[._-](\d+).zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Arc.app"

  uninstall quit: "company.thebrowser.Browser"

  zap trash: [
    "~/Library/Caches/CloudKit/company.thebrowser.Browser",
    "~/Library/Caches/company.thebrowser.Browser",
    "~/Library/HTTPStorages/company.thebrowser.Browser",
    "~/Library/HTTPStorages/company.thebrowser.Browser.binarycookies",
    "~/Library/Preferences/company.thebrowser.Browser.plist",
    "~/Library/Saved Application State/company.thebrowser.Browser.savedState",
    "~/Library/WebKit/company.thebrowser.Browser",
  ]
end
