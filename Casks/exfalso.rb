cask 'exfalso' do
  version '4.0.2'
  sha256 'aea8192a089affc58f955400029a936b579bc1ee06bddc5b6f839cfb696ce9e9'

  # github.com/quodlibet/quodlibet was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/ExFalso-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom'
  name 'Ex Falso'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'ExFalso.app'

  zap trash: '~/.quodlibet'
end
