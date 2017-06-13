cask 'kyoku' do
  version '0.0.6'
  sha256 'c3057f7ba5e721ead6ad91195f08010e3c7cc0b1e172436865f7d05f8ea9e231'

  url "https://github.com/cheeaun/kyoku/releases/download/#{version}/Kyoku.app.zip"
  appcast 'https://github.com/cheeaun/kyoku/releases.atom',
          checkpoint: 'dcfb735800144567300e1433349f6d8925103e94b47f0bf861c5031c09d5f476'
  name 'Kyoku'
  homepage 'https://github.com/cheeaun/kyoku'

  app 'Kyoku.app'
end
