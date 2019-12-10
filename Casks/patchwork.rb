cask 'patchwork' do
  version '3.17.1'
  sha256 '83e083cc4f399e5a409274fecc9f1f9658c210581b96b415a7ca207192b9b14b'

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast 'https://github.com/ssbc/patchwork/releases.atom'
  name 'Patchwork'
  homepage 'https://github.com/ssbc/patchwork'

  app 'Patchwork.app'
end
