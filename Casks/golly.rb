cask 'golly' do
  version '3.1'
  sha256 '6084bc2464212366a03940d419f438af7df093c8b10ec84123e0fd0d912683db'

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/golly/rss?path=/golly'
  name 'Golly'
  homepage 'http://golly.sourceforge.net/'

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
