cask 'spotdox' do
  version '1.7.1'
  sha256 'f191d8e0038cd0da49f0fe08596b06c9b4687fb99ea45d1f52934d28fbcaecfd'

  # spotdox.herokuapp.com was verified as official when first introduced to the cask
  url 'https://spotdox.herokuapp.com/downloads/Spotdox.zip'
  appcast 'https://spotdox.herokuapp.com/downloads/appcast.xml',
          checkpoint: '26089478ca99f1e237f3a13a879f327f732a1f4396d5077a6f8007632c8cf18d'
  name 'Spotdox'
  homepage 'https://spotdox.com/'

  app 'Spotdox.app'
end
