cask 'evergreen' do
  version '1.0d30'
  sha256 'f9290d0fb028980e95d3d1cb1770f1f352d376317684cef6ea63ecd7aa844dc2'

  url "https://ranchero.com/downloads/Evergreen#{version}.zip"
  appcast 'https://ranchero.com/downloads/evergreen-beta.xml',
          checkpoint: '8e32778a4f5c31bf091df662426dd12834af89fde814bcb6dd2668c57644302b'
  name 'Evergreen'
  homepage 'https://ranchero.com/evergreen/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Evergreen.app'
end
