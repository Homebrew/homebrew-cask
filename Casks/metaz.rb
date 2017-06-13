cask 'metaz' do
  version '1.0a15'
  sha256 '7dcc71a917bed0d5686884c4ec198275a1f656ce09db71fa49cc73e46933820c'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom',
          checkpoint: '0b1060381bbfe19bc63ee537eade9fa422dd9cc8a1c0810be0bbdd03b9e21994'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
