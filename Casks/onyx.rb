cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.8'
    sha256 '9d46d09346666a4dcecd0c92eb1bebd76c76f145744926ebda594831d45724ab'
  else
    version '3.2.4'
    sha256 '10da0a9126080bdf36e3b0a8a7a47e1fdf9eadfe6282e4b502150e020d1fc4d5'
  end

  # joel.barriere.pagesperso-orange.fr/download was verified as official when first introduced to the cask
  url "http://joel.barriere.pagesperso-orange.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium.free.fr/release_onyx.html',
          checkpoint: 'e99af9d631fdbc91780ea0d9f2fdbd637642a13672e1dd9a3cff4f67bc09611a'
  name 'OnyX'
  homepage 'http://www.titanium.free.fr/onyx.html'

  depends_on macos: '>= :el_capitan'

  app 'OnyX.app'
end
