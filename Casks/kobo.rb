cask :v1 => 'kobo' do
  version :latest
  sha256 :no_check

  # akamaihd.net is the official download host per the vendor homepage
  url 'http://kbdownload1-a.akamaihd.net/desktop/kobodesktop/kobosetup.dmg'
  homepage 'http://www.kobo.com/'
  license :gratis

  app 'Kobo.app'
end
