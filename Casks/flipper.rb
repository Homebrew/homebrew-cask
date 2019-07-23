cask 'flipper' do
  version '0.23.2'
  sha256 '96040c4d3eb616fc2573c5b24a8f425e559c85dd5d88d32dc574639f57a412b6'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end
