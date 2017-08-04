cask 'dext' do
  version '0.9.0'
  sha256 '2bc13126bcde4df365228be2ccb04ec70ae3f77bef0971b22badcb7e3cb594e8'

  url "https://github.com/vutran/dext/releases/download/v#{version}/Dext-darwin-x64.zip"
  appcast 'https://github.com/vutran/dext/releases.atom',
          checkpoint: 'a0df365f9b07e93f9e36a983225b87d29a7bb51a859f33d20512c9f327f87499'
  name 'Dext'
  homepage 'https://github.com/vutran/dext'

  app 'Dext-darwin-x64/Dext.app'
end
