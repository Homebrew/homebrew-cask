cask 'focusatwill' do
  version '1.5.0'
  sha256 'bc5bc776a77bf9921403536bc91d3fceb80991ccb420efe14905bb39c93e82b6'

  # faw-desktop.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://faw-desktop.s3.amazonaws.com/focusatwill-#{version}.dmg"
  name 'Focus@Will'
  homepage 'https://www.focusatwill.com/'

  app 'focusatwill.app'
end
