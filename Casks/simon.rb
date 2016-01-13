cask 'simon' do
  version '4.1.1'
  sha256 'fa3f221882c769350647bd1904b95f22e4846ed582de1a99cb892828f4f6ba8c'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          :sha256 => 'fad59fcf94141c263a3cfcdeb19af33e8d96366e7491987f0e5b5d7af6984017'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'
  license :commercial

  app 'Simon.app'
end
