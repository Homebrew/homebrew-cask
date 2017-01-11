cask 'freac' do
  version '20161129'
  sha256 '8bd1e20a8e5f11971a446c359008545e5c123a7639402f3abfa874b4d00d1913'

  # sourceforge.net/bonkenc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/bonkenc/rss',
          checkpoint: '618073cc7d75292e113725f9044e5b9aa001aa83a2ef007e260b621270b68fa1'
  name 'fre:ac'
  homepage 'https://www.freac.org/'

  app 'freac.app'
end
