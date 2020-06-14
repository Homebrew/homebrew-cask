cask 'ipepresenter' do
  version '7.2.19'
  sha256 '8a9145e3269a1037809345a7f386dd1ca4924322299661c73236977608d36317'

  # bintray.com/otfried/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg"
  appcast 'http://ipepresenter.otfried.org/'
  name 'IpePresenter'
  homepage 'http://ipepresenter.otfried.org/'

  depends_on macos: '>= :yosemite'

  app 'IpePresenter.app'
end
