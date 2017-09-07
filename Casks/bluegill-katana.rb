cask 'bluegill-katana' do
  version '1.1.1'
  sha256 'bb618628bd335c60dab87bc82c4e5d72df8e80e0baf5510c861962afda915fbc'

  # github.com/bluegill/katana was verified as official when first introduced to the cask
  url "https://github.com/bluegill/katana/releases/download/v#{version}/katana-#{version}-mac.zip"
  appcast 'https://github.com/bluegill/katana/releases.atom',
          checkpoint: '4ea7ef6c6c4aca75a63b6fff9bb15b78a53a40112e660a1d980e4d825e93e38f'
  name 'Katana'
  homepage 'https://getkatana.com/'

  app 'Katana.app'
end
