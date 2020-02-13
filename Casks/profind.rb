cask 'profind' do
  version '1.7.2'
  sha256 '8f14bc06a0196ec562c4042c377a448d679a738196151ead83ab610b6a0906ff'

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.no_dots}.dmg"
  appcast 'https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml'
  name 'ProFind'
  homepage 'https://www.zeroonetwenty.com/profind/'

  depends_on macos: '>= :high_sierra'

  app 'ProFind.app'
end
