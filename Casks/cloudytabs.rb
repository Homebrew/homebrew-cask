cask 'cloudytabs' do
  version '1.8'
  sha256 'fbaece85ea803f74fa6c1abf089445bd2722dae39649a1738d58cfeea03d5877'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom',
          checkpoint: 'b1a3921bc8e07b1c932632b5bea35f3e10899640ee37088c5897564396c78e03'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'

  app 'CloudyTabs.app'
end
