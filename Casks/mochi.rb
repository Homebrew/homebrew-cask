cask 'mochi' do
  version '1.6.0'
  sha256 '2984fd65a8e53122ac2dd9913c87417800cde398547f4f7f5d1e11e94981aa68'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
