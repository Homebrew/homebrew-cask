cask 'bitmessage' do
  version '0.6.1'
  sha256 '401571b671a75dfdc94587cb3790443165cff86a122b919ad08e51c2d088ad1f'

  # github.com/Bitmessage/PyBitmessage was verified as official when first introduced to the cask
  url "https://github.com/Bitmessage/PyBitmessage/releases/download/v#{version}/bitmessage-v#{version}.dmg"
  appcast 'https://github.com/Bitmessage/PyBitmessage/releases.atom',
          checkpoint: 'ff09661559521f36a3a2b74d3cadf48cf2f469db47f4a46d6be4639ad217c9da'
  name 'Bitmessage'
  homepage 'https://bitmessage.org/'

  app 'Bitmessage.app'
end
