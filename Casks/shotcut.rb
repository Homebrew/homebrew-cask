cask 'shotcut' do
  version '18.11.13'
  sha256 'cf37baedea06e78eb8773b4930860443537c228337e11c81c61cd598a61c560a'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
