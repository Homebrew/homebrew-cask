cask 'fontgoggles' do
  version '1.1.12'
  sha256 'e90b0e63800a6baa06709bc4630bf17ae29bd8363c458a983aa721d6f5ff3e81'

  # github.com/justvanrossum/fontgoggles was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
