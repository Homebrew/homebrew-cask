cask 'grandtotal' do
  version '5.1.7'
  sha256 'dff6b0118d1d09979981957df17fccc3d57eca2f88b37fc5ab15630880ab970c'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mavericks'

  app 'GrandTotal.app'
end
