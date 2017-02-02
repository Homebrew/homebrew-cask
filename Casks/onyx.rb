cask 'onyx' do
  version '3.2.2'
  sha256 'c48b27710da5d4882241605a6179daf706be4cb287bcdcd18119d352cc64ef8a'

  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version <= :yosemite
    url "http://www.titanium.free.fr/download/#{macos_release}/OnyX.dmg"
  else
    # joel.barriere.pagesperso-orange.fr was verified as official when first introduced to the cask
    url "http://joel.barriere.pagesperso-orange.fr/download/#{macos_release}/OnyX.dmg"
  end

  appcast 'http://www.titanium.free.fr/release_onyx.html',
          checkpoint: 'e77d30cd899aaa199351eb091ec477c580840b449880fb0808540e98ce96b913'
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
