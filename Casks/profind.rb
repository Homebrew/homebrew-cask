cask 'profind' do
  version '1.7.0'
  sha256 '21391307ebfa022a90ff9fcd8706d88ef56999e5b5f3e68868e46e514da8fbab'

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast 'https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml'
  name 'ProFind'
  homepage 'https://www.zeroonetwenty.com/profind/'

  depends_on macos: '>= :high_sierra'

  app 'ProFind.app'
end
