cask 'ipepresenter' do
  version '7.2.18'
  sha256 '1e2e6b7f245d639098d03117a43795a099052a0b910934aa532a36513190f6b4'

  # bintray.com/otfried/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg"
  appcast 'http://ipepresenter.otfried.org/'
  name 'IpePresenter'
  homepage 'http://ipepresenter.otfried.org/'

  depends_on macos: '>= :yosemite'

  app 'IpePresenter.app'
end
