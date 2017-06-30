cask 'serial' do
  version '1.3.3'
  sha256 '33ef2ff46e09336493713f33486a21fd6447c8ae978dc038636f6f4966eeb95e'

  url "https://download.decisivetactics.com/products/serial/dl/Serial_#{version}.zip"
  appcast 'https://www.decisivetactics.com/products/serial/release-notes',
          checkpoint: 'cca71906cd5e3586893ca740feb9b8c577a797aa06601fe99efa74cf08df2898'
  name 'Serial'
  homepage 'https://www.decisivetactics.com/products/serial/'

  app 'Serial.app'
end
