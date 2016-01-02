cask 'qnapi' do
  version '0.2.0'
  sha256 'a6eb52a4f70c6c22816a442741a7d8c44c62d793461596876e31c72453048d81'

  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom',
          :sha256 => 'ce9f879f3a25de329ad4d537196dd4c11fe9e90a301f001092bd9080b9706601'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'
  license :gpl

  app 'QNapi.app'
end
