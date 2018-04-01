cask 'cloudytabs' do
  version '1.9'
  sha256 '55fd43096c708e859ad969533c4034ab00a6be2f6bab5a5ccde3069cd976f5d5'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom',
          checkpoint: '1b74a4bfb365fc8bbe49be719a85932220f292f5d3238bd938edbcde60ec540e'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'

  app 'CloudyTabs.app'
end
