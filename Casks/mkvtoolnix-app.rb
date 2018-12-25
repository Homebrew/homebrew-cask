cask 'mkvtoolnix-app' do
  version '29.0.0'
  sha256 '209578d5d25adb37a2cf857139afb35a421a64b104c2d59af0476d609037244d'

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  appcast 'https://www.bunkus.org/blog/feed/'
  name 'MKVToolNix'
  homepage 'https://mkvtoolnix.download/'

  app "MKVToolNix-#{version}.app"
end
