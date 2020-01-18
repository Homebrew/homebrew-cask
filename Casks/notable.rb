cask 'notable' do
  version '1.8.3'
  sha256 'f5190e20628526bae567642b8bb664f2a65ed7ca61dca432306389f92e7025bc'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  auto_updates true

  app 'Notable.app'
end
