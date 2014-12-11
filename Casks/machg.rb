cask :v1 => 'machg' do
  version '0.9.25'
  sha256 '4eaf4abf4a8c52ce0bf4075a3aae7b0b94c8f551340245b3cb72d2a97fb93531'

  url "http://jasonfharris.com/machg/downloads/assets/MacHg#{version}.zip"
  appcast 'http://jasonfharris.com/machg/machg_appcast.xml',
          :sha256 => 'f562cfb2d9a8c7a5cf603529dfbc79f3782614795d85d54a107961d96242203b'
  homepage 'http://jasonfharris.com/machg/'
  license :unknown    # todo: improve this machine-generated value

  app 'MacHg.app'
end
