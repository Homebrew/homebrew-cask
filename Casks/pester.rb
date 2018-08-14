cask 'pester' do
  version '1.1b23'
  sha256 '5df4b28e0ab3511688709cb9af399b15c76494cbad975e917b4308aa5867162e'

  url "https://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'https://sabi.net/nriley/software/Pester/updates.xml'
  name 'Pester'
  homepage 'https://sabi.net/nriley/software/index.html#pester'

  app 'Pester.app'
end
