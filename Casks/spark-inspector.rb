cask :v1 => 'spark-inspector' do
  version :latest
  sha256 :no_check

  url 'http://sparkinspector.com/downloads/sparkinspector.dmg'
  appcast 'http://sparkinspector.com/sparkle/feed.xml',
          :sha256 => 'fe79f1e5cf64e6fabba4b1da806cfcb13b7536a9fac032b788e65a785ce8bd2d'
  name 'Spark Inspector'
  homepage 'http://sparkinspector.com/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Spark Inspector.app'
end
