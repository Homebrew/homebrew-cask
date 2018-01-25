cask 'metaz' do
  version '1.0.beta-35'
  sha256 '9b778eea86ac68a38bc40b88d5a74da6e6cb4a521e2ed1e8b62957309a286ffd'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom',
          checkpoint: '64ad5ec7895d8b890eab9abef034c46083d783d1d4f40c7e41f3ed978bf49921'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
