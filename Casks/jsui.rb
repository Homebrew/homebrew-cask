cask 'jsui' do
  version '0.0.24'
  sha256 '28972f9f941360b23a29a5646233c75eb564c831600b3182ea1e6e9f54d8932c'

  url "https://github.com/kitze/JSUI/releases/download/v#{version}/JSUI-#{version}-mac.zip"
  appcast 'https://github.com/kitze/JSUI/releases.atom'
  name 'JSUI'
  homepage 'https://github.com/kitze/JSUI'

  auto_updates true

  app 'JSUI.app'

  zap trash: '~/Library/Application Support/jsui'
end
