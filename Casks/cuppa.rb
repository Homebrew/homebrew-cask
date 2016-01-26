cask 'cuppa' do
  version '1.7.8'
  sha256 'd8be48b618b8d6bb1e435de379d88fe5697041e2a2ec52bf68218c76b9d21fe2'

  url "http://www.nathanatos.com/software/downloads/Cuppa-#{version}.zip"
  appcast 'http://www.nathanatos.com/software/cuppa.xml',
          checkpoint: '684713a16bfa5ac60dcb4df35ef970cd48286ed1667da960fe448be05cb17aa4'
  name 'Cuppa'
  homepage 'http://www.nathanatos.com/software'
  license :bsd

  app 'Cuppa.app'
end
