cask 'grandtotal' do
  version '4.1.7'
  sha256 '26cb005446ee81041a68850be3cf0c1d790188b8b803e1c614e40d923be94a4e'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          checkpoint: '740ecedb0ced80287033127df0dc574a218015bfe6dfb51dfba7c3c8fcf0d18c'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
