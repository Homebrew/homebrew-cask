cask :v1 => 'qnapi' do
  version '0.2.0'
  sha256 'a6eb52a4f70c6c22816a442741a7d8c44c62d793461596876e31c72453048d81'

  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'
  license :gpl

  app 'QNapi.app'
end
