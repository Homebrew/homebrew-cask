cask 'moter' do
  version 'v0.0.3'
  sha256 '0f39dc55afabcf04e4c6c46607bb04489b07bcf3ad3f5df1924474f998286ee1'

  url 'https://github.com/gWOLF3/moter/releases/download/v0.0.3/moter'
  appcast 'https://github.com/gWOLF3/moter/releases.atom'
  name 'Moter'
  homepage 'https://github.com/gWOLF3/moter'

  depends_on cask: 'vlc'
  depends_on cask: 'spectacle'
  depends_on cask: 'iterm2'

  binary 'moter'
end
