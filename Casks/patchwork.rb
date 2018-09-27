cask 'patchwork' do
  version '3.11.0'
  sha256 '800d8270a8da55422a87aba5bf38fc6dae1cd03ef65c19fab4e9d1b48c94601d'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
