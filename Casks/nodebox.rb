cask 'nodebox' do
  version '3.0.43'
  sha256 '3c0f93ad72d0bb1fba3a517515b38a7a6bd24cffe0d5560395b3fbaebdc72444'

  url "https://secure.nodebox.net/downloads/NodeBox-#{version}.zip"
  name 'NodeBox'
  homepage 'https://www.nodebox.net/node/'
  license :gpl

  app 'NodeBox.app'
end
