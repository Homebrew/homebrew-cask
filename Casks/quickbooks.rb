cask "quickbooks" do
  version "21.0.7.1242,2022"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version.csv.second}/Latest/QuickBooksMac#{version.csv.second}.dmg"
  name "QuickBooks Desktop"
  desc "Accounting software"
  homepage "https://quickbooks.intuit.com/desktop/mac/"

  livecheck do
    url "https://http-download.intuit.com/http.intuit/Downloads/Mac/QuickBooks/021/279328A8-538A-4E97-B184-25CB5EA8BABB/app/appcast.xml"
    strategy :sparkle do |item|
      year = item.url[%r{/QuickBooks_(\d+)\.tgz}i, 1]
      next if year.blank?

      "#{item.short_version},#{year}"
    end
  end

  depends_on macos: ">= :mojave"

  app "QuickBooks #{version.csv.second}.app"
end
