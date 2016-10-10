cask 'shiba' do
  version '1.0.0'
  sha256 '4600a765cd2a9b23b9fa1090b86b43f8c43f7b6d07e69c2c294c26f06a5cf0d3'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: '1c0cdb6cba3a6ee81b31b72dd17b02465d6b0b457fe276739585ea53fdf85235'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba'

  app 'Shiba-darwin-x64/Shiba.app'
end
