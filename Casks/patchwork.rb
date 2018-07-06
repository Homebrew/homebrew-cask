cask 'patchwork' do
  version '3.9.0'
  sha256 'b2af77bdc568a6b005df1de1526d6901b6b87d80685abd4109c90daa7ff9e4a3'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
