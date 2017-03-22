cask 'posterazor' do
  version '1.9.5'
  sha256 '1de827b9f44ffc16a23e4bdd9ff916290e81a1869ba2f5222c01a6f3d5551bd8'

  url "https://downloads.sourceforge.net/posterazor/PosteRazor-#{version}-OSX.dmg"
  appcast 'https://sourceforge.net/projects/posterazor/rss',
          checkpoint: 'e48b0edf881bb9c3081198a0d63a1bc1f5afa9d8749faec9266270650a8feb3b'
  name 'PosteRazor'
  homepage 'http://posterazor.sourceforge.net/'

  app 'PosteRazor.app'
end
