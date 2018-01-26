cask 'shiba' do
  version '1.1.1'
  sha256 '9b6d2d0b22367cc50dda69a9d89443ab5822c2a4c71031d7233353fa33380f2f'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: 'cca6c3024c755bcdc21055f9910c9b163bf80ab8ffa5dd6d2361cc9dafab1239'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba/'

  app 'Shiba-darwin-x64/Shiba.app'
end
