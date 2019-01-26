cask 'notable' do
  version '1.2.0'
  sha256 '81d3f13e37d15730c78f100a5bae790a9ae62cdde1b0cb41bcdcacf4e942f7af'

  url "https://github.com/fabiospampinato/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/fabiospampinato/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/fabiospampinato/notable'

  app 'Notable.app'
end
