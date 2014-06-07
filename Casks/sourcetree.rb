class Sourcetree < Cask
  url 'http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.4.dmg'
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'
  version '1.9.4'
  sha256 'c8e1e102420b614bba2c8815d79e451723e6ef6c16d54cb3a40cc83a55ba8f09'
  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
