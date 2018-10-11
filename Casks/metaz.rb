cask 'metaz' do
  version '1.0.beta-43'
  sha256 '70e603b361431bcb08663cddbf967dc8a6e18661a9c6ea3e77edccb1e78655ae'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
