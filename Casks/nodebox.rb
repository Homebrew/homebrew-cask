cask 'nodebox' do
  version '3.0.46'
  sha256 '8400d76be7c4b5a4c86d54ffb107c5800a2d7c8425821e65b37af724d427d142'

  url "https://secure.nodebox.net/downloads/NodeBox-#{version}.zip"
  appcast 'https://www.nodebox.net/node/release-notes.html',
          checkpoint: 'c2c8a2411d3581933554411ab4ad14e8143acebbf582f092b01c93748bbcf578'
  name 'NodeBox'
  homepage 'https://www.nodebox.net/node/'

  app 'NodeBox.app'
end
