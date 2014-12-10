cask :v1 => 'grandtotal' do
  version :latest
  sha256 :no_check

  url 'http://www.mediaatelier.com/GrandTotal3/download.php'
  appcast 'http://mediaatelier.com/GrandTotal3/feed.php'
  homepage 'http://www.mediaatelier.com/GrandTotal3/'
  license :unknown    # todo: improve this machine-generated value

  app 'GrandTotal.app'
end
