cask 'lepton' do
  version '1.4.0'
  sha256 '2b9bb68dc03951641dc5e1dad78e51bd8695f9b8a2e6029327dc9c7679d17fa6'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: '124c8050699216554e54dcd4879081179dd43ad5ed9ebdc0223d26800a776979'
  name 'Lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'
end
