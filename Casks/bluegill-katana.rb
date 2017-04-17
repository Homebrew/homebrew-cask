cask 'bluegill-katana' do
  version '1.1.1'
  sha256 'bb618628bd335c60dab87bc82c4e5d72df8e80e0baf5510c861962afda915fbc'

  # github.com/bluegill/katana was verified as official when first introduced to the cask
  url "https://github.com/bluegill/katana/releases/download/v#{version}/katana-#{version}-mac.zip"
  appcast 'https://github.com/bluegill/katana/releases.atom',
          checkpoint: '182dca3e37fd246414b9fec5b3034df2c826fd779b0ab8e93c3b08b9a2daa4bf'
  name 'Katana'
  homepage 'https://getkatana.com/'

  app 'Katana.app'
end
