cask 'black-screen' do
  version '0.2.66'
  sha256 '51843c889baf89adbfe8f812a62260a6eb45a46283c99719ac939d2d40bdd0a4'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '27828c8ef817f5375e341c56c2ac3ed331553b963968f2b52c8f7e2dcb8caf7c'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'
end
