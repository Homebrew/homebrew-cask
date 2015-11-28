cask :v1 => 'ipe' do
  version '7.1.10'
  sha256 '5e14f13d213905af34561a0d169e9f1f9eed91ae8f85f163df951af2c2392198'

  url 'https://dl.bintray.com/otfried/generic/ipe/7.1/ipe-7.1.10-mac.dmg'
  name 'Ipe'
  homepage 'http://ipe.otfried.org'
  license :oss    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ipe.app'
end
