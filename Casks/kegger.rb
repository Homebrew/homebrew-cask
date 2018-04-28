cask 'kegger' do
  version '1.0.0'
  sha256 '53461901105730c786a9f9263a9e41c14d30d66f17ef4d4680b282c66f2c4b33'

  url "https://github.com/bealearts/kegger/releases/download/v#{version}/Kegger.dmg"
  appcast 'https://github.com/bealearts/kegger/releases.atom',
          checkpoint: '0ed82a1f08ce6a777139c497ab2231b90e42f2d1c79c090fa9595f70be67e020'
  name 'Kegger'
  homepage 'https://github.com/bealearts/kegger/'

  app 'Kegger.app'
end
