cask 'notable' do
  version '1.6.1'
  sha256 'b898f849ac10c7ce0b836f2afab7e51f176dfb68a55c30aae6d0a8026513e588'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
