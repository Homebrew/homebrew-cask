cask 'filezilla' do
  if MacOS.release <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.17.0'
    sha256 '16814c7c98a8ce4102eb27323f373a4f3009c63a76d04da19066b8a3e04ac7da'
  end

  # sourceforge.net/project/filezilla was verified as official when first introduced to the cask
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
