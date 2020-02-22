cask 'patchwork' do
  version '3.17.5'
  sha256 '3ba1a780a0a218ed91d12dc7a0d5a26d452037b31180498b3d5302cf777da149'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
