cask 'earthcoin' do
  version '1.3.4'
  sha256 '117c1a72a89268d5cbd3f4441f46194e3365966d39769d85af282abbd1afb23e'

  url "https://github.com/earthcoinproject/earthcoin/releases/download/v#{version}/EarthCoin-Qt-#{version}.dmg"
  appcast 'https://github.com/earthcoinproject/earthcoin/releases.atom',
          checkpoint: 'c6a519dbfd324fdb63513e876e5e2ee54f07eb29a19607de911ca77af7f228e7'
  name 'Earthcoin'
  homepage 'https://github.com/earthcoinproject/earthcoin'

  app 'EarthCoin-Qt.app'
end
