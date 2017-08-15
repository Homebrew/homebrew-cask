cask 'play' do
  version '2.0.6'
  sha256 '33cd5b2483498c91e346c4afc0eb6f98b9d5e1920a93a504ad59343903f54b07'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: '9a0f5e48a5c00e1ca1fbc7848cd0a567091e7e01ca72af72afe64354b348cd12'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap delete: '~/Library/Caches/Play',
      trash:  '~/Library/Application Support/Play'
end
