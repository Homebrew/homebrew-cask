cask 'keeweb' do
  version '1.5.0'
  sha256 '4b8476149c4da15e1b973ceb151bab08533f01431235572dfd8d9e2fc907b263'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '8e1d8bfc9ca84496fb5d12e234a599dc2d965cb04743dfa9e554a8590045960f'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
