cask 'moter' do
  version 'v0.0.1'
  sha256 '06c99c133c4f689d496bd1e955f4b1cee91a1adf236acda26b389893c4e22485'

  url 'https://github.com/gWOLF3/moter/releases/download/v0.0.1/moter'
  appcast 'https://github.com/gWOLF3/moter/releases.atom'
  name 'Moter'
  homepage 'https://github.com/gWOLF3/moter'

  depends_on cask: 'vlc'
  depends_on cask: 'spectacle'

  binary 'moter'
end
