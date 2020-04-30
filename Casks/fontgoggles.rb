cask 'fontgoggles' do
  version '1.1.14'
  sha256 '609287874d2a288b69a146e670fea2521b6d23b18940f777fc835ad981c10296'

  # github.com/justvanrossum/fontgoggles/ was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
