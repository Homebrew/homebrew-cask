cask 'notable' do
  version '1.8.0'
  sha256 '0a9043013a27a44711abeccb58d9bcb5cb09a7db6a617e130f7f5d10c3c8c2bc'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
