cask 'grandtotal' do
  version '6.0.7'
  sha256 '293b49c492b26ff35fb9a003681df0eb11a06b999317400609bedc3a45e5334e'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app 'GrandTotal.app'
end
