cask :v1 => 'screenhero' do
  version :latest
  sha256 :no_check

  url 'http://dl.screenhero.com/update/screenhero/Screenhero.dmg'
  appcast 'http://dl.screenhero.com/update/screenhero/sparkle.xml'
  homepage 'http://screenhero.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Screenhero.app'
end
