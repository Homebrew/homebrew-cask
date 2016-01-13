cask 'spark-inspector' do
  version '1.5.1'
  sha256 '0d1cbe2d7727bfd50c48d06e47f18e83178d6d8e9f73b5eae756a9188b9e804f'

  url 'http://sparkinspector.com/downloads/sparkinspector.dmg'
  appcast 'http://sparkinspector.com/sparkle/feed.xml',
          :checkpoint => '48bb4142d8ab21f0eff8c0758fcb8ac4becae2786c969e1f1d6128662a507136'
  name 'Spark Inspector'
  homepage 'http://sparkinspector.com/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Spark Inspector.app'
end
