cask 'machg' do
  version '1.0.2'
  sha256 'af15173111c1d350ba5b62edf6fe5ab3a186cc8bdb6302455c4fb04f2a809305'

  url "http://jasonfharris.com/machg/downloads/assets/MacHg#{version}.zip"
  appcast 'http://jasonfharris.com/machg/machg_appcast.xml',
          checkpoint: 'ced63dd31eb43a5e633c300d344cdea5cd15a01a539bceb6b1bcc3599581ffec'
  name 'MacHg'
  homepage 'http://jasonfharris.com/machg/'

  app 'MacHg.app'
end
