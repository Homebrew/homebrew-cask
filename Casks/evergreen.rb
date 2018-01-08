cask 'evergreen' do
  version :latest
  sha256 :no_check

  url 'https://ranchero.com/downloads/Evergreen-latest.zip'
  appcast 'https://ranchero.com/downloads/evergreen-beta.xml',
          checkpoint: '8e32778a4f5c31bf091df662426dd12834af89fde814bcb6dd2668c57644302b'
  name 'Evergreen'
  homepage 'https://ranchero.com/evergreen/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Evergreen.app'
end
