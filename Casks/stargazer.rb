cask 'stargazer' do
  version '1.6.0'
  sha256 '6c70c8ce2c855fa001109204dda5dae04e12d6cc30bde86375febcc50ac1f3a4'

  # github.com/johansten/stargazer was verified as official when first introduced to the cask
  url "https://github.com/johansten/stargazer/releases/download/v#{version}/Stargazer-#{version}.dmg"
  appcast 'https://github.com/johansten/stargazer/releases.atom'
  name 'Stargazer'
  homepage 'https://getstargazer.com/'

  app 'Stargazer.app'
end
