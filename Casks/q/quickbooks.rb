cask "quickbooks" do
  version "22.0.7.888,2023"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version.csv.second}/Latest/QuickBooksMac#{version.csv.second}.dmg"
  name "QuickBooks Desktop"
  desc "Accounting software"
  homepage "https://quickbooks.intuit.com/desktop/"

  livecheck do
    url "https://http-download.intuit.com/http.intuit/Downloads/Mac/QuickBooks/022/F86D4547-DFA0-4E55-A113-2502002DA600/app/appcast.xml"
    regex(%r{/QuickBooks[._-]v?(\d+(?:\.\d+)*)\.t}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "QuickBooks #{version.csv.second}.app"

  zap trash: [
    "~/Library/Application Support/com.intuit.QuickBooks#{version.csv.second}",
    "~/Library/Application Support/QuickBooks #{version.csv.second}",
    "~/Library/Caches/com.intuit.QuickBooks#{version.csv.second}",
    "~/Library/HTTPStorages/com.intuit.QuickBooks#{version.csv.second}*",
    "~/Library/Logs/QuickBooks",
    "~/Library/Preferences/ByHost/com.intuit.QuickBooks#{version.csv.second}.*",
    "~/Library/Preferences/com.intuit.QuickBooks#{version.csv.second}.plist",
    "~/Library/Saved Application State/com.intuit.QuickBooks#{version.csv.second}.savedState",
    "~/Library/WebKit/com.intuit.QuickBooks#{version.csv.second}",
  ]
end
