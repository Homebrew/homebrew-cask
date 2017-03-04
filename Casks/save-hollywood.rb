cask 'save-hollywood' do
  version :latest
  sha256 :no_check

  url 'http://s.sudre.free.fr/Software/files/SaveHollywood.dmg'
  name 'SaveHollywood Screensaver'
  homepage 'http://s.sudre.free.fr/Software/SaveHollywood/about.html'

  screen_saver 'SaveHollywood.saver'
end
