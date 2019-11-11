cask 'moter' do
  version 'v0.0.2'
  sha256 '6b072440e4bb5ff08cd937d79be34580e8427132637d36ceef05de9484e49ee8'

  url 'https://github.com/gWOLF3/moter/releases/download/v0.0.2/moter'
  appcast 'https://github.com/gWOLF3/moter/releases.atom'
  name 'Moter'
  homepage 'https://github.com/gWOLF3/moter'

  depends_on cask: 'vlc'
  depends_on cask: 'spectacle'
  depends_on cask: 'iterm2'


  binary 'moter'
end
