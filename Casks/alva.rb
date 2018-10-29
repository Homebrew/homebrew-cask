cask 'alva' do
  version '0.8.0'
  sha256 '20efe3613780c3a42fa1af7f3f0db7297bc01927753970134f5abcb538413b54'

  # github.com/meetalva/alva was verified as official when first introduced to the cask
  url "https://github.com/meetalva/alva/releases/download/v#{version}/Alva-#{version}-mac.zip"
  appcast 'https://github.com/meetalva/alva/releases.atom'
  name 'Alva'
  homepage 'https://meetalva.io/'

  app 'Alva.app'
end
