cask 'studiolinkcomponent' do
  version '16.02.0-beta'
  sha256 '6fd085a2f420e6ea584c6fac374070488e2cbf59cd743fb71de8ba9f3eab944b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Studio-Link-v2/backend/releases/download/v#{version}/studio-link-plugin-osx.zip"
  appcast 'https://github.com/Studio-Link-v2/backend/releases.atom',
          checkpoint: '9afde3059f8be79f95dee629fe161573f616d6eb9f39e22f13ac2ec9bd9f56f0'
  name 'Studio Link Plugin'
  homepage 'https://doku.studio-link.de/plugin/installation-plugin.html'
  license :bsd

  audio_unit_plugin 'StudioLink.component'

  zap delete: '~/.studio-link-plugin'
end
