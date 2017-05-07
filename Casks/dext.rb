cask 'dext' do
  version '0.9.0'
  sha256 '2bc13126bcde4df365228be2ccb04ec70ae3f77bef0971b22badcb7e3cb594e8'

  url "https://github.com/vutran/dext/releases/download/v#{version}/Dext-darwin-x64.zip"
  appcast 'https://github.com/vutran/dext/releases.atom',
          checkpoint: 'f31b8a859a421bd13a14fe89b9fd48d0b258863551ee7186cd8aa7c96eea17a7'
  name 'Dext'
  homepage 'https://github.com/vutran/dext'

  app 'Dext-darwin-x64/Dext.app'
end
