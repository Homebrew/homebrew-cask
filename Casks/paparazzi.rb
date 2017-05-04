cask 'paparazzi' do
  version '1.0b5'
  sha256 'f65571f660e100ac9531fab9edef6413e1f23a5a952e6f2553380cecc3fc0b7b'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: 'dadd0160957d37476f8b45b79442213ac8e8621918467c0ca4c02c328840bc5a'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'

  app 'Paparazzi!.app'
end
