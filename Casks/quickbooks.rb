cask "quickbooks" do
  version "20.0.4.856,2021"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version.after_comma}/Latest/QuickBooksMac#{version.after_comma}.dmg"
  name "QuickBooks Desktop"
  homepage "https://quickbooks.intuit.com/desktop/mac/"

  livecheck do
    url "https://http-download.intuit.com/http.intuit/Downloads/Mac/QuickBooks/020/66E6085F-B670-45F7-88DB-D19C9CBD5855/app/appcast.xml"
    strategy :sparkle do |item|
      year = item.url[%r{/QuickBooks_(\d+)\.tgz}i, 1]
      "#{item.short_version},#{year}"
    end
  end

  depends_on macos: ">= :mojave"

  app "QuickBooks #{version.after_comma}.app"
end
