cask 'seashore' do
  version '2.4.11'
  sha256 'f9882ec71e55915bb93e5e4f3f5087b27e02a51ce43e9df9bf2961b7c8b5c733'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
