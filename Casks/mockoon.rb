cask 'mockoon' do
  version '1.6.0'
  sha256 '7651be10aa797eb33c47a07f6a7e522326a7b7aa206a5c595e5a0a51c78e6c04'

  # github.com/mockoon/mockoon was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/mockoon/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
