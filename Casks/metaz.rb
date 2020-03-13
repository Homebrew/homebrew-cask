cask 'metaz' do
  version '1.0.beta-91'
  sha256 'ace9e527bff419f9fed4df95996ff245db7446e585593d308544420540bfc53f'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
