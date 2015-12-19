cask 'strife' do
  version '0.4.8.0'
  sha256 '9d4349e39b3b68c8d44fdbb07d6037710644f328a836fa7def4132ef39ae71d7'

  url "http://dl.strife.com/af1dfc2754268375727a3eec1749b27e/StrifeMac64-#{version}.zip"
  name 'Strife'
  homepage 'https://strife.com'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Strife.app'
end
