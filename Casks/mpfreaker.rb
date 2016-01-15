cask 'mpfreaker' do
  version :latest
  sha256 :no_check

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml',
          :checkpoint => 'a4c8766ae9553e11f0888a988ea537949ce117c092eea99cad5a0eff7aefe7c4'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'
  license :freemium

  app 'MPFreaker.app'
end
