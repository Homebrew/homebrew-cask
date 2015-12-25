cask 'mpfreaker' do
  version :latest
  sha256 :no_check

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml',
          :sha256 => '7b5d860a7dbb36f765bafd2813f3acfbf62dd4b7ab4b60d5e273819732a584f1'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'
  license :freemium

  app 'MPFreaker.app'
end
