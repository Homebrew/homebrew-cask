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
          checkpoint: '1f565ce610d1cdb2576b7a3962ba7e5295cb7ca13b265a80db3a23ad012c5867'
  name 'OnyX'
  homepage 'http://www.titanium.free.fr/onyx.html'
  license :gratis

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
                    ]

  app 'OnyX.app'

  caveats do
    if [:leopard, :tiger].include?(MacOS.version.to_sym)
      puts 'OnyX only runs from an Administrator account on this version of OS X.'
    end
  end
end
