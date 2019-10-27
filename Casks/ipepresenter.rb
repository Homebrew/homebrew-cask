cask 'ipepresenter' do
  version '7.2.13'
  sha256 'ad10ad1afbef8ef9a632a48976534623a3af3a23536765674142d15d10d1c3ce'

  # bintray.com/otfried was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg"
  appcast 'http://ipe.otfried.org/'
  name 'IpePresenter'
  homepage 'http://ipe.otfried.org/'

  depends_on macos: '>= :yosemite'

  app 'IpePresenter.app'
end
