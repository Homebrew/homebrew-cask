cask 'patchwork' do
  version '3.17.4'
  sha256 '8ef7ae979763bb5b357e8db30b01b90d21405e847959e5680c150d82a1f80e9e'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
