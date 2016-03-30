cask 'nodebox' do
  version '3.0.44'
  sha256 '9181a1b886c4a02bc0d94f62b49865b5f1c1ea473ec5c8a7b93f1b9d95535b5a'

  url "https://secure.nodebox.net/downloads/NodeBox-#{version}.zip"
  name 'NodeBox'
  homepage 'https://www.nodebox.net/node/'
  license :gpl

  app 'NodeBox.app'
end
