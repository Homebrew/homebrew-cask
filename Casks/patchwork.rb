cask 'patchwork' do
  version '3.11.5'
  sha256 '1e66856dbfee4f5cb1c4b6d69b05a27bc195525e96fa386663572f6375557e70'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
