cask 'patchwork' do
  version '3.11.6'
  sha256 '6c085e4ba2146e7e379b3bedfb92c6ce81192ab9866ec0235d2efdfe9a724aeb'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
