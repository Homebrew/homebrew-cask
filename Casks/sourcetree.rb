class Sourcetree < Cask
  version '1.9.7'
  sha256 'b0f643a785ea24e9ae9ca40482c6a5a7fa88d6bbe8dc43840dbaa5526f4f4b32'

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
