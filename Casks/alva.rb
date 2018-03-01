cask 'alva' do
  version '0.6.1'
  sha256 'c9f17817e3d9b3d62086cd36bd85f4c26c82f2126e7f7aef4612f1ac8495c621'

  # github.com/meetalva/alva was verified as official when first introduced to the cask
  url "https://github.com/meetalva/alva/releases/download/v#{version}/Alva-#{version}-mac.zip"
  appcast 'https://github.com/meetalva/alva/releases.atom',
          checkpoint: '6c3ff696b3084d5499e2e512bd050e2a1d42285b9cf3191b3f15dc31bef82c0f'
  name 'Alva'
  homepage 'https://meetalva.io/'

  app 'Alva.app'
end
