cask 'grandtotal' do
  version '5.1.4'
  sha256 'e76ee2f2d73c0d89276f525106ddf9be7f60b1a0824e90b01a1bdaf3942565e6'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '36f9f96d1cedbc9cfc533fcedf45caae91c26a47c8c344bf47385d3ff6df7168'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal5/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
