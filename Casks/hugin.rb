cask 'hugin' do
  version '2018.0.0'
  sha256 '286812bb95e34c2dd8458d49878c54d919e1c0f37ed042d174e8cf0c651edb3e'

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hugin/rss',
          checkpoint: '1165a4f3f2442ed955d005d25cfd043fb47fad3aa94701ead6f400d236c4e597'
  name 'Hugin'
  homepage 'http://hugin.sourceforge.net/'

  suite 'Hugin'
end
