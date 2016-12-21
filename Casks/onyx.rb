cask 'onyx' do
  version :latest
  sha256 :no_check

  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version <= :yosemite
    url "http://www.titanium.free.fr/download/#{macos_release}/OnyX.dmg"
  else
    # joel.barriere.pagesperso-orange.fr was verified as official when first introduced to the cask
    url "http://joel.barriere.pagesperso-orange.fr/download/#{macos_release}/OnyX.dmg"
  end

  appcast 'http://www.titanium.free.fr/release_onyx.html',
          checkpoint: 'cce29a87371b8bb3059c32d9c28b2cdc20fe4f944b00fa8d3dd13b3de1c23e7c'
  name 'OnyX'
  homepage 'http://www.titanium.free.fr/onyx.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :tiger,
                      :leopard,
                      :snow_leopard,
                      :lion,
                      :mountain_lion,
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                    ]

  app 'OnyX.app'
end
