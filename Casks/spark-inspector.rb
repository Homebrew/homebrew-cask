cask 'spark-inspector' do
  version '1.5.1'
  sha256 '0d1cbe2d7727bfd50c48d06e47f18e83178d6d8e9f73b5eae756a9188b9e804f'

  url 'http://sparkinspector.com/downloads/sparkinspector.dmg'
  appcast 'http://sparkinspector.com/sparkle/feed.xml',
          :sha256 => '2669f1830c624ab24321bf9a4571b9d7b3fa330e5d27e02907aaf4ea9f2bfefd'
  name 'Spark Inspector'
  homepage 'http://sparkinspector.com/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Spark Inspector.app'
end
