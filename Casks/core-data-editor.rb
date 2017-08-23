cask 'core-data-editor' do
  version '5.2'
  sha256 '949902f859efeba9b5d9112210f32cb1020f9b43d81f43489c559ddd8e20f0e2'

  url "https://github.com/ChristianKienle/Core-Data-Editor/releases/download/#{version}/Core.Data.Editor.zip"
  appcast 'https://github.com/ChristianKienle/Core-Data-Editor/releases.atom',
          checkpoint: 'c1ae29cc93ab5a9e1dedf21d06acf889e7364ace3a179c9b3ebaab2464e9ab4d'
  name 'Core Data Editor'
  homepage 'https://github.com/ChristianKienle/Core-Data-Editor/'

  depends_on macos: '>= :sierra'

  app 'Core Data Editor.app'
end
