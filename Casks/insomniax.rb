cask :v1 => 'insomniax' do
  version '2.1.8'
  sha256 'abbf4b27e86da934042a1dcedd339ffb59e16c4aa8e0c0d44534533be42e3efb'

  url "http://insomniax.semaja2.net/InsomniaX-#{version}.tgz"
  homepage 'http://semaja2.net/projects/insomniaxinfo/'
  license :unknown    # todo: improve this machine-generated value

  app 'InsomniaX.app'
end
