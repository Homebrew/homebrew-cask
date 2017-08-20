cask 'brisk' do
  version '1.1.1'
  sha256 '0a4ba3fe9a48ad95ebd313b09dab57e11b1940238019bbb9e77ce72dc2c3864b'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: 'caf4d4d20cb70c806f92e01d30b8e8dc213da21c54a1449a37b18f5d7ea50cca'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
