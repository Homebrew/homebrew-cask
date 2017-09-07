cask 'grandtotal' do
  version '4.3.10'
  sha256 '4b2dba9f84ff8f6670cff2759c95ca79ccfe5a2b9f1f162923fda7d92d2e8376'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '2af887089a6ebb665b556bf37c8d94793c0bf392fdd1a68231761cc5c7856a0f'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
