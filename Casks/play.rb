cask 'play' do
  version '2.0.17'
  sha256 '7023dd54055cd306494dd6d3531d9e07ccdfcb434e22bd6ac60e8f7fbf1a39bd'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap trash: [
               '~/Library/Application Support/Play',
               '~/Library/Caches/Play',
             ]
end
