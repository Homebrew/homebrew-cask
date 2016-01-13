cask 'hoster' do
  version '1.2'
  sha256 'aad3404d5127bd3299e57ecf152c911776bf47bea877be56c4a9cefbc0cbf095'

  url "http://www.redwinder.com/macapp/hoster/tmp/Hoster#{version}08.zip"
  appcast 'http://www.redwinder.com/macapp/hoster/hoster12.xml',
          :checkpoint => '4e037246761f503e11c2e010f3babe836578ec70abe3016b36b673f3a9f261bd'
  name 'Hoster'
  homepage 'http://www.redwinder.com/macapp/hoster/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "Hoster#{version}08.mpkg", :allow_untrusted => true

  uninstall :pkgutil => 'com.redwinder.hoster.hoster.pkg'
end
