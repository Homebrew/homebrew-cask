cask 'freeze' do
  version '3.0.1-243'
  sha256 '6142613dd0244aaf992027be19fa9da18827c6ed19b73936352e3b316fa363b5'

  url "https://www.freezeapp.net/download/Freeze-#{version}.zip"
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'b7ffa9824076e3c4a8d6749745a4180180eb2ca41d56beeeda0e6944df74d077'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'
end
