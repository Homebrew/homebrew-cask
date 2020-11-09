cask "grandtotal" do
  version "6.2.1.1"
  sha256 "966583a1d43539d29b24129da5fb97f7edd34a29b909376b577fda775e487906"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
