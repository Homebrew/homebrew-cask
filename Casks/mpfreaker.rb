cask 'mpfreaker' do
  version '1.9.6'
  sha256 '4c9580ebe1a2f38e65b64b6163487894fec1d1525e8662e71dffd056d4a1d8dc'

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml',
          checkpoint: 'a4c8766ae9553e11f0888a988ea537949ce117c092eea99cad5a0eff7aefe7c4'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'
  license :freemium

  app 'MPFreaker.app'
end
