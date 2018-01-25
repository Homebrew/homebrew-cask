cask 'oryoki' do
  version '0.2.1'
  sha256 '08ae4ef31e8d4712ff4159ea81c087db03be6ea51e51185051959992aee9ed82'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: 'ee8d0b12e4b14ff2e03e3f162552d89c2d9aa4430d645987702c9e68bdcbc2c5'
  name 'Oryoki'
  name 'Ōryōki'
  name '応量器'
  homepage 'http://oryoki.io/'

  depends_on macos: '>= :el_capitan'

  app 'Oryoki.app'
end
