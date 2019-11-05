cask 'jsui' do
  version '0.0.22'
  sha256 'e5ef2c46076ee4915a22985d65fc2be375674ff283502c4c9aca72e8db6f31fd'

  url "https://github.com/kitze/JSUI/releases/download/v#{version}/JSUI-#{version}-mac.zip"
  appcast 'https://github.com/kitze/JSUI/releases.atom'
  name 'JSUI'
  homepage 'https://github.com/kitze/JSUI'

  auto_updates true

  app 'JSUI.app'

  zap trash: '~/Library/Application Support/jsui'
end
