cask 'livesurface-context' do
  version '1.1.718'
  sha256 '9165447a29b5a0cc098a44b5569b6dbdd15da411c5da352ebe980e8561e2e027'

  url "http://www.livesurface.com/getcontextfile.php?du=b64c31a5-e26a-4a09-9f01-dd362e376c89&d=LiveSurface_Context_#{version}.dmg"
  name 'LiveSurface Context'
  homepage 'https://livesurface.com/'

  app 'LiveSurface Context.app'

  zap trash: '~/Library/*/*[Ll]ive[Ss]urface*'
end
