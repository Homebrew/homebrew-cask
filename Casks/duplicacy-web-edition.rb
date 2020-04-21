cask 'duplicacy-web-edition' do
  version '1.3.0'
  sha256 '164114f76923902117943aac0fcdc590413e23fcc3843dd6adb3abe6266c759e'

  # acrosync.com/duplicacy-web/ was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg"
  appcast 'https://duplicacy.com/download.html'
  name 'Duplicacy Web Edition'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy Web Edition.app'

  zap trash: '~/.duplicacy-web'
end
