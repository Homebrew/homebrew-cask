cask 'joplin' do
  version '1.0.107'
  sha256 '74d72ca6a09a0136f8b33c8c02c4a38c4aa3655ae81da9cae58221372a67ab38'

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}-mac.zip"
  appcast 'https://github.com/joplin/releases/releases.atom'
  name 'Joplin'
  homepage 'https://joplin.cozic.net/'

  app 'Joplin.app'

end
