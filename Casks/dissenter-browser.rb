cask 'dissenter-browser' do
  version '0.67.13'
  sha256 '623ad116b173bf07af4956323147dd376b0261dd2a69c7db40e3fef4a0c3e6a4'

  # github.com/brave/brave-browser was verified as official when first introduced to the cask
  url "https://dissenter.com/dist/browser/dissenter-browser-#{version}.dmg"
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
