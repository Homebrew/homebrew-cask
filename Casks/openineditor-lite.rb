cask 'openineditor-lite' do
  version '1.1.1'
  sha256 '1776280c31b97953db8017b5030505d376d774f407e6d3810902fb49a93cd445'

  url "https://github.com/Ji4n1ng/OpenInTerminal/releases/download/#{version}/OpenInEditor-Lite.app.zip"
  appcast 'https://github.com/Ji4n1ng/OpenInTerminal/releases.atom'
  name 'OpenInEditor-Lite'
  homepage 'https://github.com/Ji4n1ng/OpenInTerminal'

  app 'OpenInEditor-Lite.app'
end
