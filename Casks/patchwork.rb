cask 'patchwork' do
  version '3.11.4'
  sha256 '6a750a0279d55ced844d1f8c8761e44a1755b4f8e836041ad9ceb92b85f90a31'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}-mac.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
