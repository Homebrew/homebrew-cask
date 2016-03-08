cask 'kobo' do
  version :latest
  sha256 :no_check

  # akamaihd.net is the official download host per the vendor homepage
  url 'https://kbdownload1-a.akamaihd.net/desktop/kobodesktop/kobosetup.dmg'
  name 'Kobo'
  homepage 'https://www.kobo.com/'
  license :gratis

  app 'Kobo.app'
end
