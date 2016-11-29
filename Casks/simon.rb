cask 'simon' do
  version '4.2'
  sha256 '9471c1d2fc4dfe0957603795bef2bcb831385ca7088d5bb956d435320fa3e1dc'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          checkpoint: '91c57296f0f57d0c74d4c196fa4306c7630e3f701aa9166367a65366261c95d3'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'

  app 'Simon.app'
end
