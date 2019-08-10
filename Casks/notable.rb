cask 'notable' do
  version '1.7.0'
  sha256 '3ccb41351c44706c9775fe3f5ed74fdc663cce28f76616e2450abd24c5e190cd'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
