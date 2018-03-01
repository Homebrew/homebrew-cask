cask 'delta' do
  version '0.9.2'
  sha256 '0fdbf065ddcfa9372c1a93b99514746e76320cbb2ee67ed2195f9f1b89e8ccd3'

  url "https://static-assets.getdelta.io/desktop_app/Delta-#{version}.dmg"
  name 'Delta'
  homepage 'https://getdelta.io/'

  app 'Delta.app'
end
