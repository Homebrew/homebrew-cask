cask 'mpfreaker' do
  version :latest
  sha256 :no_check

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml',
          :sha256 => 'bcca68500c6e095da7586506adb21583498678fb81bd8d0fd1a6a7a954bc2ed1'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'
  license :freemium

  app 'MPFreaker.app'
end
