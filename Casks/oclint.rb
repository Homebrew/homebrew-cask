class Oclint < Cask
  url 'http://archives.oclint.org/releases/0.7/oclint-0.7-x86_64-apple-darwin-10.tar.gz'
  homepage 'http://oclint.org'
  version '0.7'
  sha256 '697ea08fc7cd8945a40ed95e6f3d40c18ed15968b7b0c0519dce9d14873633a9'
  binary 'oclint-0.7-x86_64-apple-darwin-10/bin/oclint'
  binary 'oclint-0.7-x86_64-apple-darwin-10/bin/oclint-json-compilation-database'
  binary 'oclint-0.7-x86_64-apple-darwin-10/bin/oclint-xcodebuild'
  binary 'oclint-0.7-x86_64-apple-darwin-10/lib/oclint', :target => '/usr/local/lib/oclint'
  caveats do
    files_in_usr_local
  end
end
