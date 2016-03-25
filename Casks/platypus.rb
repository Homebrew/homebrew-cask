cask 'platypus' do
  version '5.1'
  sha256 '14a3595cc4e61f3e4e3051ddd0dde813119b6d2d2f19fa6271c259320b5b9d17'

  url "http://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'http://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml',
          checkpoint: 'b94ebed3f158d89018eed4d08e74323dcae50bc9e0273804a84c24899cd29e9d'
  name 'Platypus'
  homepage 'http://sveinbjorn.org/platypus'
  license :bsd

  auto_updates true

  app "Platypus-#{version}/Platypus.app"
end
