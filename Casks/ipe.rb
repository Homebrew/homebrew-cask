cask 'ipe' do
  version '7.2.1'
  sha256 'd55877d6162bb49c27219ca5b299f9ce598c0600b61cec4c555a7b1f6cdc2e5f'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.to_f}/ipe-#{version}-mac.dmg"
  name 'Ipe'
  homepage 'http://ipe.otfried.org'
  license :gpl

  app 'Ipe.app'
end
