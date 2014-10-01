class Machg < Cask
  version '0.9.25'
  sha256 '4eaf4abf4a8c52ce0bf4075a3aae7b0b94c8f551340245b3cb72d2a97fb93531'

  url "http://jasonfharris.com/machg/downloads/assets/MacHg#{version}.zip"
  appcast 'http://jasonfharris.com/machg/machg_appcast.xml'
  homepage 'http://jasonfharris.com/machg/'
  license :unknown

  app 'MacHg.app'
end
