cask 'dfontsplitter' do
  version '0.4.1'
  sha256 'd9345ffe0e9be0c096e65114be21fc3aac676a9a3a53e84f1d6cebff0b7796b3'

  url "https://peter.upfold.org.uk/files/dfontsplitter/dfontsplitter-#{version}-mac.zip"
  appcast 'https://apps.upfold.org.uk/appupdate/dfontsplitter.xml',
          checkpoint: '8dfb0eca113f48d162fc12aae8c7b2c77d62f9958491bd8d6a3c5c9881567aba'
  name 'DfontSplitter'
  homepage 'https://peter.upfold.org.uk/projects/dfontsplitter'
  license :gpl

  app 'DfontSplitter.app'
end
