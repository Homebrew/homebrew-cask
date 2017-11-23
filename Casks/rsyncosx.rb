cask 'rsyncosx' do
  version '4.8.6'
  sha256 '5cffd6718791b4842412e498d4269c375cf5bd00d1d001f7dce5b40eeb377290'

  url "https://github.com/rsyncOSX/RsyncOSX/releases/download/v#{version}/RsyncOSX.dmg"
  appcast 'https://github.com/rsyncOSX/RsyncOSX/releases.atom',
          checkpoint: 'aa9036664db725fc14e77bad0d334441183a4ffd36cf2639de5ff849635d94e2'
  name 'RsyncOSX'
  homepage 'https://github.com/rsyncOSX/RsyncOSX'

  app 'RsyncOSX.app'

  zap trash: [
               '~/Library/Caches/no.blogspot.RsyncOSX',
               '~/Library/Preferences/no.blogspot.RsyncOSX.plist',
               '~/Library/Saved Application State/no.blogspot.RsyncOSX.savedState',
             ]
end
