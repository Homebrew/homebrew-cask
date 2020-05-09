cask 'ipepresenter' do
  version '7.2.17'
  sha256 '40c25dec534beb35f9cccb0202885a5ce1408fde109a031c6af4d0acc391a1bd'

  # bintray.com/otfried/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg"
  appcast 'http://ipepresenter.otfried.org/'
  name 'IpePresenter'
  homepage 'http://ipepresenter.otfried.org/'

  depends_on macos: '>= :yosemite'

  app 'IpePresenter.app'
end
