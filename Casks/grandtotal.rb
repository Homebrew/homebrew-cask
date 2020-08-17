cask "grandtotal" do
  version "6.1.8"
  sha256 "c0aa7a5a61922600565b60ca17a0f2f82ace099882bd0a68c862a2cfda1794df"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
