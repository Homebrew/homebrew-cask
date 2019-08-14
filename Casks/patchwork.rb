cask 'patchwork' do
  version '3.15.0'
  sha256 '58f81fcaadd6a348f476848f65901e29ff0cb848f4081a35a012e780946dfc62'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
