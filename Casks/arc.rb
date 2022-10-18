cask "arc" do
  version "0.72.0,35182"
  sha256 "b24d3077662cb2a3b98c1eb0bec2c87a52e223ae8fdcd1a7fbef5f0cc73e48e1"

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

  depends_on macos: ">= :catalina"

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
