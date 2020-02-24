cask 'notable' do
  version '1.8.4'
  sha256 '5ca00f5135e769165c683dc0174ea95bd9052ca751a0704b1a1a20dd297b4e3d'

  # github.com/notable/notable was verified as official when first introduced to the cask
  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://notable.md/'

  auto_updates true

  app 'Notable.app'
end
