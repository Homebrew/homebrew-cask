cask 'patchwork' do
  version '3.17.6'
  sha256 '96c576fe6619f5b81053313a689ca9fdda5b9debffb5c0b6f495893305428803'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
