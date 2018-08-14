cask 'jsui' do
  version '0.0.18'
  sha256 'c9da288c5572b270f2ada5f9f5aca4d7df7d400821c0a79c9229f6d3f597b1b0'

  url "https://github.com/kitze/JSUI/releases/download/v#{version}/JSUI-#{version}-mac.zip"
  appcast 'https://github.com/kitze/JSUI/releases.atom'
  name 'JSUI'
  homepage 'https://github.com/kitze/JSUI'

  auto_updates true

  app 'JSUI.app'

  zap trash: '~/Library/Application Support/jsui'
end
