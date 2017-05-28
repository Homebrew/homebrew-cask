cask 'patchwork' do
  version '3.3.3'
  sha256 '45d620ef7aed08d41db20f99852367912b4613d9d66afc3a22475a75679d4348'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom',
          checkpoint: '740e7dea88a08437987f135603fe8450050912320439acf35b2bf12a3b68075a'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
