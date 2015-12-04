cask :v1 => 'ipe' do
  version '7.1.10'
  sha256 '5e14f13d213905af34561a0d169e9f1f9eed91ae8f85f163df951af2c2392198'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.to_f}/ipe-#{version}-mac.dmg"
  name 'Ipe'
  homepage 'http://ipe.otfried.org'
  license :gpl

  app 'Ipe.app'
end
