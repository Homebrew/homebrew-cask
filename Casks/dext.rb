cask 'dext' do
  version '0.9.0'
  sha256 '2bc13126bcde4df365228be2ccb04ec70ae3f77bef0971b22badcb7e3cb594e8'

  url "https://github.com/vutran/dext/releases/download/v#{version}/Dext-darwin-x64.zip"
  appcast 'https://github.com/vutran/dext/releases.atom',
          checkpoint: '324088be5fbbcb7882dc5f910bc5a68b6535c7466f3b02f6b79903d3bfc0f790'
  name 'Dext'
  homepage 'https://github.com/vutran/dext'

  app 'Dext-darwin-x64/Dext.app'
end
