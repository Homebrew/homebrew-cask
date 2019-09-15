cask 'patchwork' do
  version '3.16.2'
  sha256 'd7f394430a634d0d5baa1ab9d2fe50b5c2cdb6845aca42ca1b08f4398dfb6fe1'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
