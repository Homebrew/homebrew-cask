cask "quickbooks" do
  version "2021"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://http-download.intuit.com/http.intuit/Downloads/#{version}/Latest/QuickBooksMac#{version}.dmg"
  appcast "https://http-download.intuit.com/http.intuit/Downloads/Mac/QuickBooks/020/66E6085F-B670-45F7-88DB-D19C9CBD5855/app/appcast.xml"
  name "QuickBooks Desktop"
  homepage "https://quickbooks.intuit.com/desktop/mac/"

  depends_on macos: ">= :mojave"

  app "QuickBooks #{version}.app"
end
