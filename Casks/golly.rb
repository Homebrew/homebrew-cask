cask 'golly' do
  version '3.1'
  sha256 '6084bc2464212366a03940d419f438af7df093c8b10ec84123e0fd0d912683db'

  url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/golly/rss?path=/golly',
          checkpoint: '247566a932034bb028d6a88c12826f5683183e68a7f7de95a236d8f41c23a735'
  name 'Golly'
  homepage 'http://golly.sourceforge.net/'

  suite "golly-#{version}-mac"
  binary "#{appdir}/golly-#{version}-mac/bgolly"
end
