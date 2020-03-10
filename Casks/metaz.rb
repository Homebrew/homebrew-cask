cask 'metaz' do
  version '1.0.beta-78'
  sha256 'b7e9d4235f377f790612f65c7c1e9c35c4d4714b15c0c9bc696537bb282ebc4a'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
