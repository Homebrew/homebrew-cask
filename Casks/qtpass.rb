cask 'qtpass' do
  version '1.1.1'
  sha256 '4feb50fa56fb3d935bc9df598cc511da6168f91b926d20af3eef88b4dd96b051'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '708202c18c1b76e0ed3be809dff77457cbad1c3afbff329002e784db2260a0f9'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
