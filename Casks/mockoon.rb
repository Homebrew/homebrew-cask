cask 'mockoon' do
  version '1.5.0'
  sha256 '68e59cdea4bc95691692122dd7eb9f89634f58d6f5e7d3090d910c151a81acc4'

  # github.com/mockoon/mockoon was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast 'https://github.com/mockoon/mockoon/releases.atom'
  name 'Mockoon'
  homepage 'https://mockoon.com/'

  auto_updates true

  app 'Mockoon.app'
end
