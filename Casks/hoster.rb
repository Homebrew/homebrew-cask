cask :v1 => 'hoster' do
  version '1.2'
  sha256 'aad3404d5127bd3299e57ecf152c911776bf47bea877be56c4a9cefbc0cbf095'

  url "http://www.redwinder.com/macapp/hoster/tmp/Hoster#{version}08.zip"
  appcast 'http://www.redwinder.com/macapp/hoster/hoster12.xml',
          :sha256 => 'e992ca66e708b04a0a6aaa1efaddfda8652790b83b555201581ca37fc9374fa7'
  homepage 'http://www.redwinder.com/macapp/hoster/'
  license :unknown

  pkg "Hoster#{version}08.mpkg", :allow_untrusted => true

  uninstall :pkgutil => 'com.redwinder.hoster.hoster.pkg'
end
