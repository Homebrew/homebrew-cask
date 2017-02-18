cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.8'
    sha256 '9d46d09346666a4dcecd0c92eb1bebd76c76f145744926ebda594831d45724ab'
  else
    version '3.2.3'
    sha256 '53537980646d43fd7521fae700fff0154c4b557ab32ee055342e49ca2c6ac97b'
  end

  # joel.barriere.pagesperso-orange.fr/download was verified as official when first introduced to the cask
  url "http://joel.barriere.pagesperso-orange.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium.free.fr/release_onyx.html',
          checkpoint: '9735d7b818279e27dbb65eda02934f86d4ede11567895136ecd96505955052d1'
  name 'OnyX'
  homepage 'http://www.titanium.free.fr/onyx.html'

  depends_on macos: '>= :el_capitan'

  app 'OnyX.app'
end
