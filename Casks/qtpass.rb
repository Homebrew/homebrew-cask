cask 'qtpass' do
  version '1.1.3'
  sha256 'd2488cf342a7b470564481423dbf6b5a07789c41e7a39c7a44a027b6c2b0b054'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '5c020a503bcfad1407583e46b16bc2ee273622a136ba9a631002defc860125dd'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
