cask 'oryoki' do
  version '0.2.2'
  sha256 '419a251b1be83c1f11763d4713920f5e7676a2cb23fc9e359e0d2d4fd349e23f'

  # github.com/thmsbfft/oryoki was verified as official when first introduced to the cask
  url "https://github.com/thmsbfft/oryoki/releases/download/#{version}/Oryoki-#{version}.zip"
  appcast 'https://github.com/thmsbfft/oryoki/releases.atom',
          checkpoint: '5cf035ce9c0df5957ebdc566e7c2a6bd8cf78e1107f83f6fc3f4abcdeaf31dfa'
  name 'Oryoki'
  name 'Ōryōki'
  name '応量器'
  homepage 'http://oryoki.io/'

  depends_on macos: '>= :el_capitan'

  app 'Oryoki.app'
end
