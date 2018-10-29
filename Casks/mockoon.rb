cask 'mockoon' do
  version '1.2.0'
  sha256 '041830134077961090cb03f1dda7a78726a9f7098dbf961e923fee876b84a7a2'

  # github.com/255kb/mockoon was verified as official when first introduced to the cask
  url "https://github.com/255kb/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/255kb/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
