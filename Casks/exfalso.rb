cask 'exfalso' do
  version '4.2.1'
  sha256 'f14267df96269f1b9979f47a82711c61370b0050f006f9bb4b4af07b044cbab6'

  # github.com/quodlibet/quodlibet was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/ExFalso-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom'
  name 'Ex Falso'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'ExFalso.app'

  zap trash: '~/.quodlibet'
end
