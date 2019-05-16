cask 'sus-inspector' do
  version '0.3.2'
  sha256 '19e70b858263087fbdbe442cbc8d84546e0ade06bedc7a6d3aafd0cfa6730bd3'

  url "https://github.com/hjuutilainen/sus-inspector/releases/download/v#{version}/SUS-Inspector-#{version}.dmg"
  appcast 'https://github.com/hjuutilainen/sus-inspector/releases.atom'
  name 'SUS Inspector'
  homepage 'https://github.com/hjuutilainen/sus-inspector'

  app 'SUS Inspector.app'
end
