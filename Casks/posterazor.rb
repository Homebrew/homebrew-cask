cask 'posterazor' do
  version '1.5'
  sha256 'dbecf2dc00fe2bf106df2e9fd9bc66014015989771db6c369a86d755f516df49'

  url "https://downloads.sourceforge.net/posterazor/PosteRazor-#{version}-OSX.dmg"
  appcast 'https://sourceforge.net/projects/posterazor/rss',
          checkpoint: 'e48b0edf881bb9c3081198a0d63a1bc1f5afa9d8749faec9266270650a8feb3b'
  name 'PosteRazor'
  homepage 'http://posterazor.sourceforge.net'

  app 'PosteRazor.app'
end
