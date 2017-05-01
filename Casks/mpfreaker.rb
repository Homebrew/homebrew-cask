cask 'mpfreaker' do
  version '1.10'
  sha256 'd4423ccaff090b0fe336a80f86ace193b34e273e4149c11b3a23e90b15181ae8'

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml',
          checkpoint: '671385ac01783bc26fb85e9753ff69f6f31d7e09d31146e21ebcba99e7ce9481'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'

  app 'MPFreaker.app'
end
