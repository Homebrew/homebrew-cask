cask 'machg' do
  version '1.0.2'
  sha256 'af15173111c1d350ba5b62edf6fe5ab3a186cc8bdb6302455c4fb04f2a809305'

  url "http://jasonfharris.com/machg/downloads/assets/MacHg#{version}.zip"
  appcast 'http://jasonfharris.com/machg/machg_appcast.xml',
          :sha256 => 'a912eaf8e6fb2ea6baac096be259922cb6c9b933b8b5cf6611fc638aebc087ba'
  name 'MacHg'
  homepage 'http://jasonfharris.com/machg/'
  license :bsd

  app 'MacHg.app'
end
