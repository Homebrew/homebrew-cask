cask 'pencil2d' do
  version '0.6.0'
  sha256 '22026401c6eece9358a9251bf7f9a22e62214ef25bf2d82daf66c00ede9eb11c'

  # github.com/pencil2d/pencil was verified as official when first introduced to the cask
  url "https://github.com/pencil2d/pencil/releases/download/#{version}/pencil2d-mac-#{version}.zip"
  appcast 'https://github.com/pencil2d/pencil/releases.atom',
          checkpoint: '55055418deb3625c5851f0bd47f8f3aca124d340caa839f4524489f0c1b7dfc0'
  name 'Pencil2D Animation'
  homepage 'https://www.pencil2d.org/'

  app 'Pencil2D/Pencil2D.app'
end
