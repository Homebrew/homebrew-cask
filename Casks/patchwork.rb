cask 'patchwork' do
  version '3.14.1'
  sha256 'f96c886545b6661cbb9be9c5f7e80bb702e810bfceea691db03c6045ef4a9f0b'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
