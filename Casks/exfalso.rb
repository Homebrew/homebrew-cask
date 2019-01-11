cask 'exfalso' do
  version '4.2.0'
  sha256 'd61a0fa082b69bb4976ee9c6bc2de6b2cbae1ced01a8ae02e6dd3063db825311'

  # github.com/quodlibet/quodlibet was verified as official when first introduced to the cask
  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/ExFalso-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom'
  name 'Ex Falso'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'ExFalso.app'

  zap trash: '~/.quodlibet'
end
