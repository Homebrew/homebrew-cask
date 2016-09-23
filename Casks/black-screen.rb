cask 'black-screen' do
  version '0.2.48'
  sha256 '38f5c7c252e14874d4c7d5202774e108c6b6519fbed00f0c719d3a6438a66a8f'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '8a7cd91f6e9f869c06663e31e22e65770b2f2efa1860b53f377274d4f650acc9'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
