cask 'notable' do
  version '1.4.0'
  sha256 'cac9eb54d7e45fe38cae6a5083e8af2de93adbc0c43079e72c0938cd1c417cbf'

  url "https://github.com/fabiospampinato/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/fabiospampinato/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/fabiospampinato/notable'

  app 'Notable.app'
end
