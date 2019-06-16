cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '2.2.0'
  sha256 'd711e172b0d5a25b61e91e74fed20c7fb160b05d71bb3ec2fc79312973e8cafe'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
