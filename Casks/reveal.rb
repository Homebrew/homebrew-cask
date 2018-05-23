cask 'reveal' do
  version '14'
  sha256 'a807bb42aee9125d83950ef8fc1b3f92019c33fb7cdfe07548f81bcedef4c891'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/',
          checkpoint: '0893944dbee59abcb6a8dfd57c4364642c517c62a7b66eaf3faeebb35cde8a17'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :sierra'

  app 'Reveal.app'
end
