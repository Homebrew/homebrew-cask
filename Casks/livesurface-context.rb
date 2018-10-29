cask 'livesurface-context' do
  version '1.2.150'
  sha256 'f509a9c3a722cf76ab1236aa1dcd203c5c42576796b6e5eacda627fc6a86e5eb'

  url "https://www.livesurface.com/getcontextfile.php?du=b64c31a5-e26a-4a09-9f01-dd362e376c89&d=LiveSurface_Context_#{version}.dmg"
  name 'LiveSurface Context'
  homepage 'https://livesurface.com/'

  app 'LiveSurface Context.app'

  zap trash: '~/Library/*/*[Ll]ive[Ss]urface*'
end
