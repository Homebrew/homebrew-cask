cask 'notable' do
  version '1.6.0'
  sha256 '825a306ed960423cf9d2c4970edbdcea5432dd04cf031ee83f00ad340be49aa7'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
