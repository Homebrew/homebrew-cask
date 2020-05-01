cask 'ipepresenter' do
  version '7.2.16'
  sha256 'e4510a7ac6408518db2453e3ddfb5d6e6a55af88010e2597ed64cf4bbefadee7'

  # bintray.com/otfried/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg"
  appcast 'http://ipepresenter.otfried.org/'
  name 'IpePresenter'
  homepage 'http://ipepresenter.otfried.org/'

  depends_on macos: '>= :yosemite'

  app 'IpePresenter.app'
end
