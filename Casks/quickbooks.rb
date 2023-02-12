cask "quickbooks" do
  version "22.0.3.624,2023"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version.csv.second}/Latest/QuickBooksMac#{version.csv.second}.dmg"
  name "QuickBooks Desktop"
  desc "Accounting software"
  homepage "https://quickbooks.intuit.com/desktop/mac/"

  livecheck do
    url "https://http-download.intuit.com/http.intuit/Downloads/Mac/QuickBooks/022/F86D4547-DFA0-4E55-A113-2502002DA600/app/appcast.xml"
    strategy :sparkle do |item|
      year = item.url[%r{/QuickBooks_(\d+)\.tgz}i, 1]
      next if year.blank?

      "#{item.short_version},#{year}"
    end
  end

  depends_on macos: ">= :monterey"

  app "QuickBooks #{version.csv.second}.app"
end
