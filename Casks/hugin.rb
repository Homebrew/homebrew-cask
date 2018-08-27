cask 'hugin' do
  version '2018.0.0'
  sha256 '286812bb95e34c2dd8458d49878c54d919e1c0f37ed042d174e8cf0c651edb3e'

  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hugin/rss'
  name 'Hugin'
  homepage 'http://hugin.sourceforge.net/'

  suite 'Hugin'
end
