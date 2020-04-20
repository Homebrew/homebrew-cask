cask 'menutube' do
  version '1.5.0'
  sha256 '1661d6b690a619eda8e394b9328ca5db8eea980fab5cb2c5c68b220d16798935'

  # github.com/edanchenkov/MenuTube/ was verified as official when first introduced to the cask
  url "https://github.com/edanchenkov/MenuTube/releases/download/#{version}/MenuTube.zip"
  appcast 'https://github.com/edanchenkov/MenuTube/releases.atom'
  name 'MenuTube'
  homepage 'https://edanchenkov.github.io/MenuTube/'

  app 'MenuTube.app'
end
