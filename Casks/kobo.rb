cask 'kobo' do
  version :latest
  sha256 :no_check

  # kbdownload1-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://kbdownload1-a.akamaihd.net/desktop/kobodesktop/kobosetup.dmg'
  name 'Kobo'
  homepage 'https://www.kobo.com/desktop'

  app 'Kobo.app'
end
