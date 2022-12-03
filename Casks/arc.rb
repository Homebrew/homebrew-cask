cask "arc" do
  version "0.79.2,36228"
  sha256 "f688bf80a575cf7af812c0124dc5b8325744d500ac9a930e8f9947c01ded0370"

  url "https://releases.arc.net/release/Arc-#{version.csv.first}-#{version.csv.second}.zip"
  name "Arc"
  desc "Chromium based browser"
  homepage "https://arc.net/"

  livecheck do
    url "https://releases.arc.net/updates.xml"
    regex(%r{/Arc-(\d+(?:\.\d+)+)-(\d+).zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Arc.app"

  uninstall quit: "company.thebrowser.Browser"

  zap trash: [
    "~/Library/Caches/company.thebrowser.Browser",
    "~/Library/Caches/CloudKit/company.thebrowser.Browser",
    "~/Library/HTTPStorages/company.thebrowser.Browser",
    "~/Library/HTTPStorages/company.thebrowser.Browser.binarycookies",
    "~/Library/Preferences/company.thebrowser.Browser.plist",
    "~/Library/Saved Application State/company.thebrowser.Browser.savedState",
    "~/Library/WebKit/company.thebrowser.Browser",
  ]
end
