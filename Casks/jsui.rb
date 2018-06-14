cask 'jsui' do
  version '0.0.17'
  sha256 '913ec94421215516f7a7e6ca751555bcdf4a4fff92489b56b70f1ec37b768408'

  url "https://github.com/kitze/JSUI/releases/download/v#{version}/JSUI-#{version}-mac.zip"
  appcast 'https://github.com/kitze/JSUI/releases.atom'
  name 'JSUI'
  homepage 'https://github.com/kitze/JSUI'

  auto_updates true

  app 'JSUI.app'

  zap trash: '~/Library/Application Support/jsui'
end
