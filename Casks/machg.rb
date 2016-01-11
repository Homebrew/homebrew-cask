cask 'machg' do
  version '1.0.2'
  sha256 'af15173111c1d350ba5b62edf6fe5ab3a186cc8bdb6302455c4fb04f2a809305'

  url "http://jasonfharris.com/machg/downloads/assets/MacHg#{version}.zip"
  appcast 'http://jasonfharris.com/machg/machg_appcast.xml',
          :sha256 => 'fe77a994c0211593969da8e2815c5899a6adbc972d8c0cbcc02f070cc87a2903'
  name 'MacHg'
  homepage 'http://jasonfharris.com/machg/'
  license :bsd

  app 'MacHg.app'
end
