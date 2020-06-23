cask 'fontgoggles' do
  version '1.1.16'
  sha256 'c9749640cc04f3999db15ef7baa0dafb71e492fa6fef9f0b0cf0bed3dd5f0658'

  # github.com/justvanrossum/fontgoggles/ was verified as official when first introduced to the cask
  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  appcast 'https://github.com/justvanrossum/fontgoggles/releases.atom'
  name 'FontGoggles'
  homepage 'https://fontgoggles.org/'

  app 'FontGoggles.app'
end
