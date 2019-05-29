cask 'notable' do
  version '1.5.1'
  sha256 'a44c9d571342e84bddc7cbcd9bf5310039991898828e605934e23719dd4285ef'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
