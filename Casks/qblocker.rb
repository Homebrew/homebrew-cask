cask '1clipboard' do
  version :latest
  sha256 :no_check

  url 'https://dl.devmate.com/uk.co.wearecocoon.QBlocker/QBlocker.dmg'
  name 'QBlocker'
  homepage 'http://qblocker.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'QBlocker.app'
end
