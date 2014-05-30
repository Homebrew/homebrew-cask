class Sourcetree < Cask
  url 'http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.3.dmg'
  homepage 'http://www.sourcetreeapp.com/'
  version '1.9.3'
  sha256 '56be64239bab7af8213cd1908563326cc88a58260254b4fab1c6df3e14a57685'
  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
