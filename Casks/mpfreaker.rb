cask :v1 => 'mpfreaker' do
  version :latest
  sha256 :no_check

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MPFreaker.app'
end
