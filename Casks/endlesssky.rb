cask 'endlesssky' do
  version '0.9.0'
  sha256 '708cbfaad8448eb5208f5b85408545054c1b8744f87a4208a848e7452c1b337e'

  # github.com/endless-sky/endless-sky was verified as official when first introduced to the cask
  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          checkpoint: '4bc2dcbd402ab4172d925a06522a9bc764129d4fd36825485b9f75fbee441793'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end
