cask 'mochi' do
  version '1.4.18'
  sha256 '6562133f440a18cbd1f9d68d3b2b037b0477a7a7e9c8fb919d834278c7c08b04'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
