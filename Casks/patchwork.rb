cask 'patchwork' do
  version '3.11.5'
  sha256 '8e47477aa9e3b920b67bbada35225c2f88acc805efea4e11618ab56ede1a42bf'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
