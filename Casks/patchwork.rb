cask 'patchwork' do
  version '3.10.0'
  sha256 '83c30a83329bfeebcdddb2a2723072b817305567e37cb754e10549eff75e9437'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
