cask 'jsui' do
  version '0.0.20'
  sha256 'a7e0a7d315e05181b083cdcddeff3ababdc95a3bc9dc75b191ebbbc6d55b6070'

  url "https://github.com/kitze/JSUI/releases/download/v#{version}/JSUI-#{version}-mac.zip"
  appcast 'https://github.com/kitze/JSUI/releases.atom'
  name 'JSUI'
  homepage 'https://github.com/kitze/JSUI'

  auto_updates true

  app 'JSUI.app'

  zap trash: '~/Library/Application Support/jsui'
end
