cask 'nightowl' do
  version '0.2.6'
  sha256 '550796659cee360ecebafc2684a89b2f36b68532980da9c5857e5a7938561abf'

  url "https://nightowl.kramser.xyz/files/NightOwl#{version}.zip"
  appcast 'https://nightowl.kramser.xyz/'
  name 'NightOwl'
  homepage 'https://nightowl.kramser.xyz/'

  depends_on macos: '>= :mojave'

  app 'NightOwl.app'
end
