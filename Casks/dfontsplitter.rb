cask :v1 => 'dfontsplitter' do
  version '0.4.1'
  sha256 'd9345ffe0e9be0c096e65114be21fc3aac676a9a3a53e84f1d6cebff0b7796b3'

  url "http://peter.upfold.org.uk/files/dfontsplitter/dfontsplitter-#{version}-mac.zip"
  appcast 'http://apps.upfold.org.uk/appupdate/dfontsplitter.xml',
          :sha256 => 'b7a3ed81f5e160a4888afdb5810d97f5b2ed828ecec4569dc1d1a6bd825bcc59'
  homepage 'http://peter.upfold.org.uk/projects/dfontsplitter'
  license :unknown    # todo: improve this machine-generated value

  app 'DfontSplitter.app'
end
