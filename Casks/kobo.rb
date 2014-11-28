cask :v1 => 'kobo' do
  version :latest
  sha256 :no_check

  url 'http://download.kobobooks.com/desktop/kobodesktop/kobosetup.dmg'
  homepage 'http://www.kobo.com/'
  license :unknown

  app 'Kobo.app'
end
