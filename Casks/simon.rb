cask 'simon' do
  version '4.1.1'
  sha256 'fa3f221882c769350647bd1904b95f22e4846ed582de1a99cb892828f4f6ba8c'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          checkpoint: '7c225c4321f6d296316fd572b9b30da0906926bd6fa0cba1f7901d3275d38609'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'
  license :commercial

  app 'Simon.app'
end
