cask 'mochi' do
  version '1.5.0'
  sha256 '90142f255bbdff33d36132225888f76ce4626a963f22db168110e982d6654f77'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
