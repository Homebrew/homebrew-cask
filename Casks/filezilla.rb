cask 'filezilla' do
  if MacOS.release <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.15.0.1'
    sha256 '818a4b8bbcb50878a8b1b9f71b4274d242ab46bf860c74676e98dec1d0248821'
  end

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  name 'FileZilla'
  homepage 'https://filezilla-project.org/'
  license :gpl

  app 'FileZilla.app'

  zap delete: [
                '~/.config/filezilla',
                '~/Library/Saved Application State/de.filezilla.savedState',
                '~/Library/Preferences/de.filezilla.plist',
              ]
end
