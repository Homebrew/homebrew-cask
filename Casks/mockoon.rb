cask 'mockoon' do
  version '1.3.0'
  sha256 '1f8913f5719f2a47cce733f33188e7dc4b2edb4c63af13a2953040e0400d509e'

  # github.com/255kb/mockoon was verified as official when first introduced to the cask
  url "https://github.com/255kb/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/255kb/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
