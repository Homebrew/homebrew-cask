cask 'swish' do
  version '1.0.1'
  sha256 '6fa3ab7f37704855c97cd52b854ed9b0ee69787497930011a43da261c0dcaeaf'

  url "https://highlyopinionated.co/swish/Swish-#{version}.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
