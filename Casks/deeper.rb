cask 'deeper' do
  version :latest
  sha256 :no_check

  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version <= :yosemite
    url "http://www.titanium.free.fr/download/#{macos_release}/Deeper.dmg"
  else
    # joel.barriere.pagesperso-orange.fr was verified as official when first introduced to the cask
    url "http://joel.barriere.pagesperso-orange.fr/download/#{macos_release}/Deeper.dmg"
  end

  name 'Deeper'
  homepage 'http://www.titanium.free.fr/deeper.html'

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

  app 'Deeper.app'

  caveats do
    if [:leopard, :tiger].include?(MacOS.version.to_sym)
      puts 'Deeper only runs from an Administrator account on this version of OS X.'
    end
  end
end
