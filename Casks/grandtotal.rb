cask 'grandtotal' do
  version '4.1.5'
  sha256 '743cc137ab369c8f214fab85753f5b4b0e75a7e82a90995dbfc51e7ff0270a70'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          checkpoint: '566a2ebcac475bfa6fbfd504ecf922aa5cf270269041da786df07f3468bd4e88'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
