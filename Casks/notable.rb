cask 'notable' do
  version '1.3.0'
  sha256 '366bd5b1066040dde0826defb1e857f810b8728b64a36b742bf49342b0528c8a'

  url "https://github.com/fabiospampinato/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/fabiospampinato/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/fabiospampinato/notable'

  app 'Notable.app'
end
