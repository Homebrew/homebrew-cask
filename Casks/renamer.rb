cask 'renamer' do
  version '5'
  sha256 'cd63c92343eb68e62f3873959758c0b5fb6ab0b5583a1a8112ac6b2fd36ce494'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version}/Renamer.zip"
  name 'Renamer'
  homepage 'http://renamer.com'

  app 'Renamer.app'
end
