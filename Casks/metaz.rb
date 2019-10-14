cask 'metaz' do
  version '1.0.beta-49'
  sha256 '4a9a4fb531efa1aef2d62d67ea694b7ac96387ded5b348519958f67619106f74'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
