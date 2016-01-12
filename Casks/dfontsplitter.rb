cask 'dfontsplitter' do
  version '0.4.1'
  sha256 'd9345ffe0e9be0c096e65114be21fc3aac676a9a3a53e84f1d6cebff0b7796b3'

  url "https://peter.upfold.org.uk/files/dfontsplitter/dfontsplitter-#{version}-mac.zip"
  appcast 'https://apps.upfold.org.uk/appupdate/dfontsplitter.xml',
          :sha256 => '202e6635566edc7d44d1feda0fc10844ce27962481276fd2a0695d4253c8fa50'
  name 'DfontSplitter'
  homepage 'https://peter.upfold.org.uk/projects/dfontsplitter'
  license :gpl

  app 'DfontSplitter.app'
end
