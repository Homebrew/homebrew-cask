cask 'filezilla' do
  version '3.27.0'
  sha256 'c926b783ce44013705b544c210511e35878ce64c7d60c88e07bb10239545e3c3'

  # sourceforge.net/filezilla was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast 'https://sourceforge.net/projects/filezilla/rss?path=/FileZilla_Client',
          checkpoint: 'e813a0733c0dc460a2cbe8e3985568b5cf755e40be2e23ba309a87619a53a6dc'
  name 'FileZilla'
  homepage 'https://filezilla-project.org/'

  depends_on macos: '>= :mavericks'

  app 'FileZilla.app'

  zap delete: [
                '~/.config/filezilla',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.filezilla.sfl',
                '~/Library/Preferences/de.filezilla.plist',
                '~/Library/Saved Application State/de.filezilla.savedState',
              ]
end
