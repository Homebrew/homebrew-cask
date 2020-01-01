cask 'profind' do
  version '1.7.1'
  sha256 '781da4cd220d5ded231df0e291fd86e0430941d8906ed6f7cba9a10a03ededd6'

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast 'https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml'
  name 'ProFind'
  homepage 'https://www.zeroonetwenty.com/profind/'

  depends_on macos: '>= :high_sierra'

  app 'ProFind.app'
end
