cask 'grandtotal' do
  version '4.3.7'
  sha256 'a7939184d434217c68fe0ef158d450c9e16d9487d7e18524182589186a7e2df5'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: 'cf473d742bb897c6a825aa82ac8915891116fa13150dba3d9af40d4302a89aa5'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
