cask 'deeper' do
  version :latest
  sha256 :no_check

  if MacOS.release == :tiger
    url 'http://www.titanium.free.fr/download/104/Deeper.dmg'
  elsif MacOS.release == :leopard
    url 'http://www.titanium.free.fr/download/105/Deeper.dmg'
  elsif MacOS.release == :snow_leopard
    url 'http://www.titanium.free.fr/download/106/Deeper.dmg'
  elsif MacOS.release == :lion
    url 'http://www.titanium.free.fr/download/107/Deeper.dmg'
  elsif MacOS.release == :mountain_lion
    url 'http://www.titanium.free.fr/download/108/Deeper.dmg'
  elsif MacOS.release == :mavericks
    url 'http://www.titanium.free.fr/download/109/Deeper.dmg'
  elsif MacOS.release == :yosemite
    url 'http://www.titanium.free.fr/download/1010/Deeper.dmg'
  elsif MacOS.release == :el_capitan
    # joel.barriere.pagesperso-orange.fr was verified as official when first introduced to the cask
    url 'http://joel.barriere.pagesperso-orange.fr/download/1011/Deeper.dmg'
  else
    # Unusual case: there is no fall-through.  The software will stop
    # working, or is dangerous to run, on the next OS X release.
  end

  name 'Deeper'
  homepage 'http://www.titanium.free.fr/deeper.html'
  license :gratis

  depends_on macos: %w[
                      :tiger
                      :leopard
                      :snow_leopard
                      :lion
                      :mountain_lion
                      :mavericks
                      :yosemite
                      :el_capitan
                    ]

  app 'Deeper.app'

  caveats do
    if [:leopard, :tiger].include?(MacOS.release.to_sym)
      puts 'Deeper only runs from an Administrator account on this version of OS X.'
    end
  end
end
