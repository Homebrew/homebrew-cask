cask 'shiba' do
  version '1.1.2'
  sha256 '147e6c72633856179dcefe4235a5355917c992805cf5db59a463e7032014a732'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: 'fd6b5cb5b5da32369616acca241b8a14d009b23d67d2d0ea3c8e9e1aad94f616'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba/'

  app 'Shiba-darwin-x64/Shiba.app'
end
