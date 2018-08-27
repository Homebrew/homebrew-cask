cask 'caption' do
  version '2.0.1'
  sha256 'bc3c2383ca3be4fb64adc5c8d97af2e372c163272132527db0b4ee5ab6a43605'

  # github.com/gielcobben/caption was verified as official when first introduced to the cask
  url "https://github.com/gielcobben/caption/releases/download/v#{version}/caption-#{version}-mac.zip"
  appcast 'https://github.com/gielcobben/caption/releases.atom'
  name 'Caption'
  homepage 'https://getcaption.co/'

  app 'Caption.app'
end
