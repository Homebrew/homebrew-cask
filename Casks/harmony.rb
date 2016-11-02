cask 'harmony' do
  version '0.4.1'
  sha256 'c829e916b91d7f4d623f14db06e22cd2a4debfd778f84416d2cb5aea48ce40c7'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}.dmg"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'e855ced5889ee5a39ed650f7a68dcc95f1f6621792f15a647d71d973ce12413f'
  name 'Harmony'
  homepage 'http://getharmony.xyz/'

  app 'Harmony.app'
end
