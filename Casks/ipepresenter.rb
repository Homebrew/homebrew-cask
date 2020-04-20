cask 'ipepresenter' do
  version '7.2.14'
  sha256 '01425a521034711305f28c43a713d83ab96793f54be5a87a24de89ac8c242fbf'

  # bintray.com/otfried/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac-10.10.dmg"
  appcast 'http://ipepresenter.otfried.org/'
  name 'IpePresenter'
  homepage 'http://ipepresenter.otfried.org/'

  depends_on macos: '>= :yosemite'

  app 'IpePresenter.app'
end
