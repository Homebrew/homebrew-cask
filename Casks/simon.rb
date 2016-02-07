cask 'simon' do
  version '4.1.1'
  sha256 'fa3f221882c769350647bd1904b95f22e4846ed582de1a99cb892828f4f6ba8c'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          checkpoint: '193e5c977da63dd5ff7d43775352784217f8f7a90bae4a7cad967e08a0c66b62'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'
  license :commercial

  app 'Simon.app'
end
