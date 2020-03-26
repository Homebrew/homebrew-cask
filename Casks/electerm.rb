cask 'electerm' do
  version '1.3.8'
  sha256 'a68a25a5a8594a2a979b03d0b20b85f5529948808ce9aa54be02ba89a142c94a'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
