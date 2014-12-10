cask :v1 => 'mpfreaker' do
  version :latest
  sha256 :no_check

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml'
  homepage 'http://www.lairware.com/mpfreaker/'
  license :unknown    # todo: improve this machine-generated value

  app 'MPFreaker.app'
end
